/**
 * @api {get} /api/v1/events/ getEventsList
 * @apiName getEventsList
 * @apiGroup Event
 *
 * @apiParam {Number} [limit] how many result to query.
 * @apiParam {Number} [skip] how many data to skip.
 * @apiParam {String} [device_id] get only the events from a specific device.
 *
 * @apiSuccess {Array} list of events addresses found.
 * @apiSuccessExample {json} Success-Response:
 *  {
 *      "Events": [
 *          {
 *              "_id": "5cb828d5d6bf785f320fc380",
 *              "event_time": "2019-04-18T07:35:49.386Z",
 *              "device_id": "5cb7468be7de965826a57f20",
 *              "btn_pressed": 3,
 *              "__v": 0
 *          },
 *          {
 *              "_id": "5cb8288ce800d65ef483e887",
 *              "event_time": "2019-04-18T07:34:36.729Z",
 *              "device_id": "5cb7468be7de965826a57f20",
 *              "btn_pressed": 0,
 *              "__v": 0
 *          }
 *      ]
 * }
 *}
 * @apiExample {curl} Example usage:
 *  curl -X GET \
 *    'http://127.0.0.1:3000/api/v1/events/?device_id=5cb7468be7de965826a57f20' \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Postman-Token: 1a206e1e-bab6-4415-89dd-902b07c1dbff' \
 *    -H 'cache-control: no-cache' \
 *    -d undefined=
 */

const _ = require( 'lodash' );

const list = ( { Event }, { config } ) => async ( req, res, next ) => {
  let { limit, skip, device_id } = req.query;

  skip = skip ? parseInt( skip, 10 ) : 0;
  limit = limit ? parseInt( limit, 10 ) : 100;

  try {
    const query = {};
    if ( device_id ) {
      _.extend( query, { device_id: device_id } )
    }
    const Events = await Event.find( query )
      .skip( skip )
      .limit( limit )
      .sort( { _id: -1 } );

    res.status( 200 ).send( { Events } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { list };