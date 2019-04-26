var request = require( "request" );

const config = require( './config' );

//this is to receive data from TTN
const ttn = require( 'ttn' );
const key = ttn.key;
var appID = config.TTN_APPID;
var accessKey = config.TTN_ACCESSKEY;

var os = require( "os" );
var hostname = os.hostname();
console.log( hostname );

// discover handler and open mqtt connection
ttn.data( appID, accessKey )
  .then( function( client ) {
    client.on( "uplink", function( devID, payload ) {
      console.log( "Received uplink from ", devID )

      var deviceID = payload.hardware_serial;
      var rawBuffer = payload.payload_raw;
      var battery_status = rawBuffer.readUIntLE( 0, 2 );
      var buttonPressed = rawBuffer[ 2 ];
      var time = payload.metadata.time

      console.log( "received", time, deviceID, buttonPressed, battery_status );

      saveEventToDB( deviceID, buttonPressed, time, battery_status );

    } )
  } )
  .catch( function( error ) {
    console.error( "Error", error )
    process.exit( 1 )
  } )

var host = "127.0.0.1";
var port = 3000;

saveEventToDB = function( deviceID, buttonPressed, time, bateryStatus ) {
  var options = {
    method: 'POST',
    url: 'http://' + host + ':' + port + '/api/v1/events/ ',
    headers: {
      'Postman-Token': '7304219b-44ae-491f-a120-a82fa85c6ff0',
      'cache-control': 'no-cache',
      'Content-Type': 'application/x-www-form-urlencoded'
    },
    form: {
      device_id: deviceID,
      btn_pressed: buttonPressed,
      event_time: time,
      battery_status: bateryStatus
    }
  };

  request( options, function( error, response, body ) {
    if ( error ) throw new Error( error );

    console.log( body );
  } );
}

module.exports = ttn;