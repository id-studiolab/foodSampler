/**
 * @api {post} /api/v1/auth/sign-up sign-up
 * @apiName signUp
 * @apiGroup authentication
 *
 * @apiParam {email} Your email
 * @apiParam {fullName} extended user name
 * @apiParam {password} your password

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
 *   -d 'email=username%40tudelft.com&password=psw&fullName=studioMake'
 */



const { withoutErrors } = require( '../../middleware' );
const { NotAcceptable } = require( 'rest-api-errors' );
const { PASSWORD } = require( '../../utils/regexes' );

const signUp = ( { User } ) => ( req, res, next ) => {
  const { email, password, fullName } = req.body;

  if ( !PASSWORD.test( password ) ) {
    return next( new NotAcceptable( 406, 'Password is in wrong format.' ) );
  }

  const user = new User( {
    email: email,
    profile: {
      fullName,
    },
  } );

  User.register( user, password,
    withoutErrors( next, () => next() ) );
};

module.exports = signUp;