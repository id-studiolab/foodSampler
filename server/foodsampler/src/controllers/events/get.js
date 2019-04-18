/**
 * @api {get} /api/v1/events/:id getEventByID
 * @apiName getEventByID
 * @apiGroup Event
 *
 * @apiParam {Number} id The ID of the event

 * @apiSuccess {Array} data about the event
 * @apiSuccessExample {json} Success-Response:
 * {
 *    "event": {
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
 * http: //127.0.0.1:3000/api/v1/events/5cb740f0ea31555637cc8a16 \
 *   -H 'Content-Type: application/x-www-form-urlencoded'\ -
 *   H 'Postman-Token: c2ee0b0b-6a6f-4cfe-8381-5b51e4d2438c'\ -
 *   H 'cache-control: no-cache'\ -
 *   d undefined =
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