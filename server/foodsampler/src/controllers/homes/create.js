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
 *    https://foodsampler.herokuapp.com/api/v1/homes \
 *    -H 'Accept: *\/*' \
 *    -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMTlmZDBiZDNkMTQ4MDAxNzFlY2ExOCIsImlhdCI6MTU2MTk4NzU1NSwiZXhwIjoxNTY0NTc5NTU1fQ.LYshWrnx6VhmR_vSYlwB882CoLk95Y0tzkjxeIfnuqY' \
 *    -H 'Content-Type: application/x-www-form-urlencoded' \
 *    -H 'Host: foodsampler.herokuapp.com' \
 *    -d 'nick_name=studiolab_test&address=TUDelft%20campus'
 **/


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