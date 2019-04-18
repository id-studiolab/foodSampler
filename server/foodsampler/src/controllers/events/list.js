/**
 * @api {get} /api/v1/events/ getEventsList
 * @apiName getEventsList
 * @apiGroup Event
 *
 * @apiParam {Number} [limit] how many result to query.
 * @apiParam {Number} [skip] how many data to skip.
 * @apiParam {String} [homeId] get only the events installed in a specific home.
 *
 * @apiSuccess {Array} list of events addresses found.
 * @apiSuccessExample {json} Success-Response:
 *    {
 *    "Events": [
 *        {
 *            "_id": "5cb7468be7de965826a57f20",
 *            "homeId": "5cb7393217966a53ed44ce36",
 *            "label_btn_1": "pizza marinara",
 *            "label_btn_2": "pasta al pomodoro",
 *            "label_btn_3": "prosciutto",
 *            "label_btn_4": "mozzarella",
 *            "label_btn_5": "stracchino",
 *            "label_btn_6": "tonno",
 *            "label_btn_7": "acciughe",
 *            "__v": 0
 *        },
 *        {
 *            "_id": "5cb740f0ea31555637cc8a16",
 *            "homeId": "5cb7393217966a53ed44ce36",
 *            "label_btn_1": "pizza",
 *            "label_btn_2": "pasta al pomodoro",
 *            "label_btn_3": "prosciutto",
 *            "label_btn_4": "mozzarella",
 *            "label_btn_5": "stracchino",
 *            "label_btn_6": "pomodoro",
 *            "label_btn_7": "acciughe",
 *            "__v": 0
 *        }
 *    ]
 *}
 * @apiExample {curl} Example usage:
 *    curl -X GET \
 *  'http://127.0.0.1:3000/api/v1/events/?homeId=5cb7393217966a53ed44ce36' \
 *  -H 'Content-Type: application/x-www-form-urlencoded' \
 *  -H 'Postman-Token: 25e68ac2-448c-45e1-aaf9-c1afb7ba863e' \
 *  -H 'cache-control: no-cache' \
 *  -d undefined=
 */



const _ = require( 'lodash' );

const list = ( { Event }, { config } ) => async ( req, res, next ) => {
  let { limit, skip, search, homeId } = req.query;

  skip = skip ? parseInt( skip, 10 ) : 0;
  limit = limit ? parseInt( limit, 10 ) : 100;

  try {
    const query = {};
    if ( search ) {
      _.extend( query, { nick_name: new RegExp( `${search}`, 'i' ) } )
    } else if ( homeId ) {
      _.extend( query, { homeId: homeId } )
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