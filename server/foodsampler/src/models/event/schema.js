const mongoose = require( 'mongoose' );
const Schema = mongoose.Schema;
const ObjectId = Schema.Types.ObjectId;

const schema = new Schema( {

  event_id: {
    type: ObjectId,
  },
  event_time: {
    type: Date,
    default: Date.now,
    required: [ true ],
  },
  btn_pressed: {
    type: Number,
    required: [ true ],
  },
  battery_voltage: {
    type: Number,
    required: [ true ],
  },
  device_EUI: {
    type: String,
    ref: 'Device',
    required: [ true ],
  },


} );

module.exports = {
  schema
};