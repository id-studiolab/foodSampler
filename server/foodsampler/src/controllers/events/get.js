/**
 * @api {get} /api/v1/events/:id getEventByID
 * @apiName getEventByID
 * @apiGroup Event
 *
 * @apiParam {Number} id The ID of the event

 * @apiSuccess {Array} data about the event
 * @apiSuccessExample {json} Success-Response:
 *  {
 *      "event": {
 *          "_id": "5cb828d5d6bf785f320fc380",
 *          "event_time": "2019-04-18T07:35:49.386Z",
 *          "device_id": "5cb7468be7de965826a57f20",
 *          "btn_pressed": 3,
 *          "__v": 0
 *      }
 * }
 * @apiExample {curl} Example usage:
 *  curl -X GET \
 *    http://127.0.0.1:3000/api/v1/events/5cb828d5d6bf785f320fc380 \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Postman-Token: e80c1dbe-23c7-49ab-8430-57752bdcf1a5' \
 *    -H 'cache-control: no-cache' \
 *    -d 'device_id=5cb7468be7de965826a57f20&btn_pressed=3&undefined='
 */


const get = ( { Event }, { config } ) => async ( req, res, next ) => {

  const { _id } = req.params;

  try {
    const event = await Event.findOne( { _id } );
    res.status( 200 ).send( { event } );
  } catch ( error ) {
    next( error );
  }
};


module.exports = { get };