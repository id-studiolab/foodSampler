/**
 * @api {post} /api/v1/auth/sign-in sign-in
 * @apiName signIn
 * @apiGroup authentication
 *
 * @apiParam {email} Your email
 * @apiParam {password} your password
 *
 * @apiSuccessExample {json} Success-Response:
 *  {
 *      "user": {
 *          "profile": {
 *              "fullName": "studioMake"
 *          },
 *          "_id": "5d19fd0bd3d14800171eca18",
 *          "email": "username@tudelft.com",
 *          "__v": 0
 *      },
 *      "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMTlmZDBiZDNkMTQ4MDAxNzFlY2ExOCIsImlhdCI6MTU2MTk4NDUwOCwiZXhwIjoxNTY0NTc2NTA4fQ.uhrbL3Lp4kV1eK2F5hVqINxhzhg-Io738svDH7whIX4"
 *  }
 * @apiExample {curl} Example usage:
 * curl -X POST \
 *   https://foodsampler.herokuapp.com/api/v1/auth/sign-up \
 *   -H 'Content-Type: application/x-www-form-urlencoded' \
 *   -H 'Postman-Token: afe06676-e982-4cf5-b4a3-d922a6877357' \
 *   -H 'cache-control: no-cache' \
 *   -d 'email=username%40tudelft.com&password=psw'
 */


const { sendOne } = require( '../../middleware' );

const signIn = ( req, res ) => {
  const { token, user } = req;
  return sendOne( res, { user, token } );
};

module.exports = signIn;