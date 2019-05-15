/**
 * @api {get} /homes/:id getHomeByID
 * @apiName getHomeByID
 * @apiGroup Home
 *
 * @apiSuccess {Array} data about a home
 * @apiSuccessExample {json} Success-Response:
 *  {
 *      "Homes": [
 *          {
 *              "devices": [
 *                  "5cdbe0aa1a36b037d897af99"
 *              ],
 *              "_id": "5cdbdf1da63d7936c23bb30f",
 *              "nick_name": "studiolab_test",
 *              "address": "TUDelft campus",
 *              "__v": 1
 *          }
 *      ]
 * }
 */

const get = ( { Home }, { config } ) => async ( req, res, next ) => {
  const { _id } = req.params;

  try {
    const home = await Home.findOne( { _id } )
    res.status( 200 ).send( { home } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { get };