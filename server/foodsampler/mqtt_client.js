var mqtt = require( 'mqtt' );
var mqttClient = mqtt.connect( 'mqtt://localhost:8888' );

mqttClient.on( 'connect', function() {
  console.log( "mqtt client connected" )
} );

mqttClient.sendDataToMQTT = function( topic, deviceEUI, buttonPressed, time, battery_voltage ) {
  mqttClient.publish( 'topic', deviceEUI + ',' + buttonPressed + ',' + time + ',' + battery_voltage );
  console.log( 'Message Sent' );
}

module.exports = mqttClient;