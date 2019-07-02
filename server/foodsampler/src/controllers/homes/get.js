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
 * @apiExample {curl} Example usage:
 *  curl -X GET \
 *    https://foodsampler.herokuapp.com/api/v1/homes \
 *    -H 'Accept: *\/*' \
 *    -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMTlmZDBiZDNkMTQ4MDAxNzFlY2ExOCIsImlhdCI6MTU2MTk4NzU1NSwiZXhwIjoxNTY0NTc5NTU1fQ.LYshWrnx6VhmR_vSYlwB882CoLk95Y0tzkjxeIfnuqY' \
 *    -H 'Cache-Control: no-cache' \
 *    -H 'Connection: keep-alive' \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Host: foodsampler.herokuapp.com' \
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