const createError = require( 'http-errors' );
const express = require( 'express' );
const cors = require( 'cors' );
const path = require( 'path' );
const cookieParser = require( 'cookie-parser' );
require( 'dotenv' ).config();
const { config } = require( './config' );
const { MongoManager } = require( './src/mongo' );
const api = require( './src/api' );
const app = express();
const { mongoManager } = require( './src/mongo' );
const { passport } = require( './src/passport' );


// view engine setup
app.set( 'views', path.join( __dirname, 'views' ) );
app.set( 'view engine', 'jade' );

app.use( cors() );

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

app.listen = function() {
  var server = http.createServer( this );
  comsole.log( server.address );
};

module.exports = app;