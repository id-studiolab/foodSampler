/**
 * @api {post} /homes/ createHome
 * @apiName addHome
 * @apiGroup Home
 *
 * @apiParam {String} nick_name a friendly name of the house.
 * @apiParam {String} [address] the house address.
 *
 * @apiSuccess {String[]} the data of the house just added to the db.
 * @apiSuccessExample {json} Success-Response:
 * {
 *   "home": {
 *      "devices": [],
 *      "_id": "5cdbdf1da63d7936c23bb30f",
 *      "nick_name": "studiolab_test",
 *      "address": "TUDelft campus",
 *      "__v": 0
 *  }
 * }
 * @apiExample {curl} Example usage:
 *  curl -X POST \
 *    http://127.0.0.1:3000/api/v1/homes/ \
 *    -H 'Cache-Control: no-cache' \
 *    -H 'Connection: keep-alive' \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Host: 127.0.0.1:3000' \
 *    -H 'Postman-Token: b258f589-0e8a-4850-bcb7-7fb9695d8a36,fb76dbf3-fff7-41f1-af67-59b804ee732d' \
 *    -H 'User-Agent: PostmanRuntime/7.11.0' \
 *    -H 'accept-encoding: gzip, deflate' \
 *    -H 'cache-control: no-cache' \
 *    -H 'content-length: 49' \
 *    -d 'nick_name=studiolab_test&address=TUDelft%20campus'
 */



const { NotAcceptable } = require( 'rest-api-errors' );
const { sendOne } = require( '../../middleware' );
const _ = require( 'lodash' );

const create = ( { Home }, { config } ) => async ( req, res, next ) => {
  try {
    const home = new Home();

    console.log( req.body );

    if ( !req.body.nick_name ) {
      throw new NotAcceptable( 405, 'you should pass a nickname' );
    }
    _.extend( home, req.body );
    await home.save();

    return sendOne( res, { home } );
  } catch ( error ) {
    next( error );
  }
};

module.exports = { create };