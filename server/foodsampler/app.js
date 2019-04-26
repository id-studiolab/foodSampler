const createError = require( 'http-errors' );
const express = require( 'express' );
const path = require( 'path' );
const cookieParser = require( 'cookie-parser' );
const config = require( './config' );
const { MongoManager } = require( './src/mongo' );
const api = require( './src/api' );
const app = express();
const mongoManager = new MongoManager( config );


//this is to receive data from TTN
const ttn = require( 'ttn' );
const key = ttn.key;
var appID = config.TTN_APPID;
var accessKey = config.TTN_ACCESSKEY;

// discover handler and open mqtt connection
ttn.data( appID, accessKey )
  .then( function( client ) {
    client.on( "uplink", function( devID, payload ) {
      console.log( "Received uplink from ", devID )
      console.log( payload )

      // send downlink
      //client.send( "airbnb", new Buffer( [ 0x0f, 0xaf ] ) )
    } )
  } )
  .catch( function( error ) {
    console.error( "Error", error )
    process.exit( 1 )
  } )

// view engine setup
app.set( 'views', path.join( __dirname, 'views' ) );
app.set( 'view engine', 'jade' );

app.use( express.json() );
app.use( express.urlencoded( { extended: false } ) );
app.use( cookieParser() );
app.use( express.static( path.join( __dirname, 'public' ) ) );
mongoManager.connect();

app.use( '/api/v1', api( config ) );

app.use( '/doc', express.static( 'doc' ) );


// error handler
app.use( function( err, req, res, next ) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get( 'env' ) === 'development' ? err : {};

  // render the error page
  res.status( err.status || 500 );
  res.render( 'error' );
} );

module.exports = app;