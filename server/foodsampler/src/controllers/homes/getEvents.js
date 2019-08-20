/**
 * @api {get} /homes/:id/events getEventsByHome
 * @apiDescription get all the button events registerd from all the deivices installed in a specific home.
 * @apiName getEventsByHomeID
 * @apiGroup Home
 *
 * @apiParam {String} [limit] how many device events .
 * @apiParam {String} [skip] how many results to skip, can be used in case you want to paginate the results.
 * @apiParam {String} [from] only get events from a specific time stamp, date should be provided as ISO string e.g.2019-07-02T05:21:42.089Z
 * @apiParam {String} [to] only get events before a specific time stamp, date should be provided as ISO string e.g.2019-07-02T05:21:42.089Z
 * @apiSuccess {Array} data about a home
 * @apiSuccessExample {json} Success-Response:
 *    {
 *     "home": {
 *         "devices": [
 *             {
 *                 "events": [
 *                     {
 *                         "_id": "5cdbe32b0cebb538e9084599",
 *                         "event_time": "2019-05-15T10:00:10.775Z",
 *                         "device_EUI": "00603718517107D4",
 *                         "btn_pressed": 7,
 *                         "battery_voltage": 4311,
 *                         "__v": 0
 *                     },
 *                     {
 *                         "_id": "5cdbe3450cebb538e908459b",
 *                         "event_time": "2019-05-15T10:00:36.939Z",
 *                         "device_EUI": "00603718517107D4",
 *                         "btn_pressed": 6,
 *                         "battery_voltage": 4305,
 *                         "__v": 0
 *                     },
 *                     {
 *                         "_id": "5cdbe34c0cebb538e908459c",
 *                         "event_time": "2019-05-15T10:00:44.364Z",
 *                         "device_EUI": "00603718517107D4",
 *                         "btn_pressed": 6,
 *                         "battery_voltage": 4305,
 *                         "__v": 0
 *                     },
 *                     {
 *                         "_id": "5cdbe3570cebb538e908459d",
 *                         "event_time": "2019-05-15T10:00:55.685Z",
 *                         "device_EUI": "00603718517107D4",
 *                         "btn_pressed": 7,
 *                         "battery_voltage": 4305,
 *                         "__v": 0
 *                     },
 *                     {
 *                         "_id": "5cdbf8174cea140017c5380a",
 *                         "event_time": "2019-05-15T11:29:27.391Z",
 *                         "device_EUI": "00603718517107D4",
 *                         "btn_pressed": 5,
 *                         "battery_voltage": 3905,
 *                         "__v": 0
 *                     }
 *                 ],
 *                 "_id": "5cdbe0aa1a36b037d897af99",
 *                 "device_EUI": "00603718517107D4",
 *                 "label_btn_1": "btn_1",
 *                 "label_btn_2": "btn_2",
 *                 "label_btn_3": "btn_3",
 *                 "label_btn_4": "btn_4",
 *                 "label_btn_5": "btn_6",
 *                 "label_btn_6": "btn_7",
 *                 "__v": 27
 *             }
 *         ],
 *         "_id": "5cdbdf1da63d7936c23bb30f",
 *         "nick_name": "studiolab_test",
 *         "address": "TUDelft campus",
 *         "__v": 1
 *     }
 * }
 *
 * @apiExample {curl} Example usage:
 *  curl -X GET \
 *    https://foodsampler.herokuapp.com/api/v1/homes/5d1a0b066cfdc10017e442c3/events \
 *    -H 'Accept: *\/*' \
 *    -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMTlmZDBiZDNkMTQ4MDAxNzFlY2ExOCIsImlhdCI6MTU2MTk4NzU1NSwiZXhwIjoxNTY0NTc5NTU1fQ.LYshWrnx6VhmR_vSYlwB882CoLk95Y0tzkjxeIfnuqY' \
 *    -H 'Cache-Control: no-cache' \
 *    -H 'Connection: keep-alive' \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Host: foodsampler.herokuapp.com' \
 */

const getEvents = ( { Home, Device, Event }, { config } ) => async ( req, res, next ) => {

  const { _id } = req.params;
  let limit = req.body.limit;
  let skip = req.body.skip;


  let from = new Date( "2018-01-01T00:00:00.0Z" )
  if ( req.body.from ) {
    from = new Date( req.body.from );
  }

  let to = new Date();
  if ( req.body.to ) {
    to = new Date( req.body.to );
  }

  console.log( from.getHours(), to.getHours() );

  try {
    const home = await Home.findOne( { _id } )
      .populate( {
        path: 'devices',
        populate: {
          path: 'events',
          match: {
            "$and": [
              { "btn_pressed": { $gte: 0 } },
              { "event_time": { $gte: from, $lt: to } },
            ]
          },
          options: {
            "limit": limit,
            "skip": Number( skip ),
            "sort": {}
          },

        }
      } )

    res.status( 200 ).send( { home } );
  } catch ( error ) {
    next( error );
  }


  // try {
  //   const home = await Home.findOne( { _id } )
  //     .populate( 'devices' )
  //     .populate( 'events' );
  //   res.status( 200 ).send( { home } );
  // } catch ( error ) {
  //   next( error );
  // }


};

module.exports = { getEvents };