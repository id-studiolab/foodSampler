const login = ( { Device, Home }, { config } ) => async ( req, res, next ) => {
  try {
    let refreshId = req.body.userId + jwtSecret;
    let salt = crypto.randomBytes( 16 ).toString( 'base64' );
    let hash = crypto.createHmac( 'sha512', salt ).update( refreshId ).digest( "base64" );
    req.body.refreshKey = salt;
    let token = jwt.sign( req.body, jwtSecret );
    let b = new Buffer( hash );
    let refresh_token = b.toString( 'base64' );

    return sendOne( res, { accessToken: token, refreshToken: refresh_token } );

  } catch ( error ) {
    next( error );
  }
};

module.exports = { login };