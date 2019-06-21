/**
 * @api {post} /api/v1/events/ createEvent
 * @apiName addEvent
 * @apiGroup Event
 *
 * @apiParam {String} [device_EUI] the EUI of the device.
 * @apiParam {String} [event_time] the label of the 1st button.
 * @apiParam {Number} [btn_pressed] the label of the 2nd button.
 * @apiParam {Number} [battery_voltage] the battery status.
 *
 * @apiSuccess {String[]} the data of the house just added to the db.
 * @apiSuccessExample {json} Success-Response:
 * {
 *      "event": {
 *          "_id": "5cb8288ce800d65ef483e887",
 *          "event_time": "2019-04-18T07:34:36.729Z",
 *          "device_id": "5cb7468be7de965826a57f20",
 *          "btn_pressed": 0,
 *          "__v": 0
 *      }
 * }
 * @apiExample {curl} Example usage:
 *  curl -X POST \
 *    http://127.0.0.1:3000/api/v1/events/ \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Postman-Token: 3d12be8a-35f6-4664-af86-7e01e2665d00' \
 *    -H 'cache-control: no-cache' \
 *    -d 'device_id=5cb7468be7de965826a57f20&btn_pressed=0&undefined='
 */

const { NotAcceptable } = require( 'rest-api-errors' );
const { sendOne } = require( '../../middleware' );
const _ = require( 'lodash' );

const create = ( { Event, Device }, { config } ) => async ( req, res, next ) => {
  try {

    const event = new Event();
    _.extend( event, req.body );

    const device = await Device.findOne( { device_EUI: event.device_EUI } );

    if ( !device ) {
      console.error( "device is not registered on db" )
      return sendOne( res, "device is not registered on db" );

    } else {
      //console.log( "found device: ", device );
      device.events.push( event );

      await device.save();

      await event.save();

      return sendOne( res, { event } );
    }


  } catch ( error ) {
    next( error );
  }
};

module.exports = { create };