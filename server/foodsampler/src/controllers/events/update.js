/**
 * @api {patch} /api/v1/events/:_id updateEvent
 * @apiName updateEvent
 * @apiGroup Event
 *
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
 *    "event": {
 *        "_id": "5cb7468be7de965826a57f20",
 *        "homeId": "5cb7393217966a53ed44ce36",
 *        "label_btn_1": "pizza marinara",
 *        "label_btn_2": "pasta al pesto",
 *        "label_btn_3": "prosciutto",
 *        "label_btn_4": "mozzarella",
 *        "label_btn_5": "stracchino",
 *        "label_btn_6": "tonno",
 *        "label_btn_7": "acciughe",
 *        "__v": 0
 *    }
 *}
 * @apiExample {curl} Example usage:
 * curl -X PATCH \
 *  http://127.0.0.1:3000/api/v1/events/5cb7468be7de965826a57f20 \
 *  -H 'Content-Type: application/x-www-form-urlencoded' \
 *  -H 'Postman-Token: 987e541d-d68a-4fa9-b550-8f09aea87840' \
 *  -H 'cache-control: no-cache' \
 *  -d 'label_btn_2=pasta%20al%20pesto&undefined='
 */

const _ = require( 'lodash' );

const update = ( { Event }, { config } ) => async ( req, res, next ) => {
  const { _id } = req.params;
  try {
    const event = await Event.findOne( { _id } );
    console.log( event.body );
    _.extend( event, req.body );
    await event.save();
    res.status( 200 ).send( { event } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { update };