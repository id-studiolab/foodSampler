/**
 * @api {get} /api/v1/devices/:id getDeviceByID
 * @apiName getDeviceByID
 * @apiGroup Device
 *
 * @apiParam {Number} id The ID of the device

 * @apiSuccess {Array} data about the device
 * @apiSuccessExample {json} Success-Response:
 * {
 *    "device": {
 *        "_id": "5cb740f0ea31555637cc8a16",
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
 *     curl - X GET\
 * http: //127.0.0.1:3000/api/v1/devices/5cb740f0ea31555637cc8a16 \
 *   -H 'Content-Type: application/x-www-form-urlencoded'\ -
 *   H 'Postman-Token: c2ee0b0b-6a6f-4cfe-8381-5b51e4d2438c'\ -
 *   H 'cache-control: no-cache'\ -
 *   d undefined =
 */


const get = ( { Device }, { config } ) => async ( req, res, next ) => {

  const { _id } = req.params;

  try {
    const device = await Device.findOne( { _id } );
    res.status( 200 ).send( { device } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { get };