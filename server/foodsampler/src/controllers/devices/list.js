/**
 * @api {get} /api/v1/devices/ getDevicesList
 * @apiName getDevicesList
 * @apiGroup Device
 *
 * @apiParam {Number} [limit] how many result to query.
 * @apiParam {Number} [skip] how many data to skip.
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
 curl -X GET \
   https://foodsampler.herokuapp.com/api/v1/devices \
   -H 'Accept: *\/*' \
   -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMTlmZDBiZDNkMTQ4MDAxNzFlY2ExOCIsImlhdCI6MTU2MTk4NzU1NSwiZXhwIjoxNTY0NTc5NTU1fQ.LYshWrnx6VhmR_vSYlwB882CoLk95Y0tzkjxeIfnuqY' \
   -H 'Cache-Control: no-cache' \
   -H 'Connection: keep-alive' \
   -H 'Content-Type: application/x-www-form-urlencoded' \
   -H 'Host: foodsampler.herokuapp.com' \
   -d 'nick_name=studiolab_test&address=TUDelft%20campus'
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