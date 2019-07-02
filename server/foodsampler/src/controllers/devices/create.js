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
 *  {
 *      "device": {
 *          "events": [],
 *          "_id": "5cdbe0aa1a36b037d897af99",
 *          "device_EUI": "00603718517107D",
 *          "label_btn_1": "btn_1",
 *          "label_btn_2": "btn_2",
 *          "label_btn_3": "btn_3",
 *          "label_btn_4": "btn_4",
 *          "label_btn_5": "btn_6",
 *          "label_btn_6": "btn_7",
 *          "__v": 0
 *      }
 * }
 * @apiExample {curl} Example usage:
 *  curl -X POST \
 *    https://foodsampler.herokuapp.com/api/v1/devices \
 *    -H 'Accept: *\/*' \
 *    -H 'Authorization: Bearer  * eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMTlmZDBiZDNkMTQ4MDAxNzFlY2ExOCIsImlhdCI6MTU2MTk4NzU1NSwiZXhwIjoxNTY0NTc5NTU1fQ.LYshWrnx6VhmR_vSYlwB882CoLk95Y0tzkjxeIfnuqY' \
 *    -H 'Cache-Control: no-cache' \
 *    -H 'Connection: keep-alive' \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Host: foodsampler.herokuapp.com' \
 *    -d 'home_id=5d1a0b066cfdc10017e442c3&label_btn_1=pizza&label_btn_2=pasta&label_btn_3=mozzarelle&label_btn_4=vitello%20tonnato&label_btn_5=orecchiette&label_btn_6=salame&label_btn_7=babb%C3%A0&device_EUI=00603718517107d3'
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