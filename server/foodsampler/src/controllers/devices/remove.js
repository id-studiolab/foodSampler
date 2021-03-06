/**
 * @api {delete} /api/v1/devices/:id removeDeviceByID
 * @apiName removeDeviceByID
 * @apiGroup Device
 *
 * @apiParam {Number} id The ID of the device to remove

 * @apiSuccessExample {json} Success-Response:
 *     {
 *    "device": {
 *        "_id": "5cb74043ea31555637cc8a15",
 *        "__v": 0
 *    }
 *}
 * @apiExample {curl} Example usage:
 * curl -X DELETE \
 *   http://127.0.0.1:3000/api/v1/devices/5cb74043ea31555637cc8a15 \
 *   -H 'Content-Type: application/x-www-form-urlencoded' \
 *   -H 'Postman-Token: 41b10db0-17e5-45e7-953f-26965690a9a1' \
 *   -H 'cache-control: no-cache'
*/

const _ = require( 'lodash' );

const remove = ( { Device }, { config } ) => async ( req, res, next ) => {
  const { _id } = req.params;
  try {
    const device = await Device.findOne( { _id } );
    await Device.remove( { _id } );
    res.status( 200 ).send( { device } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { remove };