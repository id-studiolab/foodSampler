/**
 * @api {get} /api/v1/devices/ getDevicesList
 * @apiName getDevicesList
 * @apiGroup Device
 *
 * @apiParam {Number} [limit] how many result to query.
 * @apiParam {Number} [skip] how many data to skip.
 * @apiParam {String} [search] regex to search for a series of devices by nickname.
 * @apiParam {String} [homeId] get only the devices installed in a specific home.
 *
 * @apiSuccess {Array} list of devices addresses found.
 * @apiSuccessExample {json} Success-Response:
 *    {
 *    "Devices": [
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
 *     curl -X GET \
 *  'http://127.0.0.1:3000/api/v1/devices/?homeId=5cb7393217966a53ed44ce36' \
 *  -H 'Content-Type: application/x-www-form-urlencoded' \
 *  -H 'Postman-Token: a5c4bc01-c4c5-4c9f-81df-cc2a936654b4' \
 *  -H 'cache-control: no-cache' \
 *  -d undefined= 'homeId=5cb7393217966a53ed44ce36&label_btn_1=pizza&label_btn_2=pasta%20al%20pomodoro&label_btn_3=prosciutto&label_btn_4=mozzarella&label_btn_5=stracchino&label_btn_6=pomodoro&label_btn_7=acciughe&undefined='
 */



const _ = require( 'lodash' );

const list = ( { Device }, { config } ) => async ( req, res, next ) => {
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
    const Devices = await Device.find( query )
      .skip( skip )
      .limit( limit )
      .sort( { _id: -1 } );

    res.status( 200 ).send( { Devices } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { list };