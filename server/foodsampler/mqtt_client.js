var mqtt = require( 'mqtt' );
const config = require( './config' );

var mqttClient = mqtt.connect( config.HEROKU_HOST + ':' + process.env.PORT );

mqttClient.on( 'connect', function() {
  console.log( "mqtt client connected" )
} );

mqttClient.sendDataToMQTT = function( topic, deviceEUI, buttonPressed, time, battery_voltage ) {
  mqttClient.publish( 'topic', deviceEUI + ',' + buttonPressed + ',' + time + ',' + battery_voltage );
  console.log( 'Message Sent' );
}

module.exports = mqttClient;