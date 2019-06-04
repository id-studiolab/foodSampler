var request = require( "request" );

const config = require( './config' );

var mqttClient = require( './mqtt_client' );

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
      console.log( "Received uplink from: ", devID )
      console.log( "payload: ", payload.payload_raw )

      var deviceEUI = payload.hardware_serial;
      var rawBuffer = payload.payload_raw;
      var battery_voltage = rawBuffer.readUIntBE( 0, 2 );
      var buttonPressed = rawBuffer[ 2 ];
      buttonPressed = Math.log2( buttonPressed ) + 1; //Martin said to add 1 :) it won't hurt <3

      var time = payload.metadata.time

      console.log( "received", time, deviceEUI, buttonPressed, battery_voltage );

      saveEventToDB( deviceEUI, buttonPressed, time, battery_voltage );
      mqttClient.sendDataToMQTT( 'event', deviceEUI, buttonPressed, time, battery_voltage );
    } )
  } )
  .catch( function( error ) {
    console.error( "Error", error )
    process.exit( 1 )
  } )

var host = "127.0.0.1";
var port = 3000;

saveEventToDB = function( deviceEUI, buttonPressed, time, battery_voltage ) {
  var options = {
    method: 'POST',
    url: 'http://' + host + ':' + port + '/api/v1/events/ ',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    },
    form: {
      device_EUI: deviceEUI,
      btn_pressed: buttonPressed,
      event_time: time,
      battery_voltage: battery_voltage
    }
  };

  console.log( options );

  request( options, function( error, response, body ) {
    if ( error ) {
      throw new Error( error );
    } else {
      console.log( "data saved", body );
    }
  } );
}


module.exports = ttn;