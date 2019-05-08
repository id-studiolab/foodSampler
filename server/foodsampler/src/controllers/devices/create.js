/**
 * @api {post} /api/v1/devices/ createDevice
 * @apiName addDevice
 * @apiGroup Device
 *
 * @apiParam {String} [device_EUI] the EUI of the device as registered in ttn.
 * @apiParam {String} [home_id] the id of the home where the device is installed.
 * @apiParam {String} [label_btn_1] the label of the 1st button.
 * @apiParam {String} [label_btn_2] the label of the 2nd button.
 * @apiParam {String} [label_btn_3] the label of the 3rd button.
 * @apiParam {String} [label_btn_4] the label of the 4th button.
 * @apiParam {String} [label_btn_5] the label of the 5th button.
 * @apiParam {String} [label_btn_6] the label of the 6th button.
 * @apiParam {String} [label_btn_7] the label of the 7th button.
 *
 * @apiSuccess {String[]} the data of the house just added to the db.
 * @apiSuccessExample {json} Success-Response:
 * {
 *    "device": {
 *        "_id": "5cb740f0ea31555637cc8a16",
 *        "device_EUI": "00603718517107D4",
 *        "homeId": "5cb7393217966a53ed44ce36",
 *        "label_btn_1": "pizza",
 *        "label_btn_2": "pasta al pomodoro",
 *        "label_btn_3": "prosciutto",
 *        "label_btn_4": "mozzarella",
 *        "label_btn_5": "stracchino",
 *        "label_btn_6": "pomodoro",
 *        "label_btn_7": "acciughe",
 *        "__v": 0
 *    }
 *}
 * @apiExample {curl} Example usage:
 *     curl -X GET \
 *      http://127.0.0.1:3000/api/v1/devices/5cb740f0ea31555637cc8a16 \
 *      -H 'Content-Type: application/x-www-form-urlencoded' \
 *      -H 'Postman-Token: ef217ee6-3251-4d1d-8879-53d439f44d60' \
 *      -H 'cache-control: no-cache' \
 *      -dd 'homeId=5cb7393217966a53ed44ce36&label_btn_1=pizza&label_btn_2=pasta%20al%20pomodoro&label_btn_3=prosciutto&label_btn_4=mozzarella&label_btn_5=stracchino&label_btn_6=pomodoro&label_btn_7=acciughe&undefined='
 */

const { NotAcceptable } = require( 'rest-api-errors' );
const { sendOne } = require( '../../middleware' );
const _ = require( 'lodash' );

const create = ( { Device, Home }, { config } ) => async ( req, res, next ) => {
  try {

    const device = new Device();
    _.extend( device, req.body );

    const home = await Home.findOne( device.home_id );
    home.devices.push( device );

    await home.save();

    await device.save();
    return sendOne( res, { device } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { create };