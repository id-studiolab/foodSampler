const mongoose = require( 'mongoose' );
const Schema = mongoose.Schema;
const ObjectId = Schema.Types.ObjectId;

const schema = new Schema( {
  device_id: {
    type: ObjectId,
  },
  device_EUI: {
    type: String,
    required: [ true ]
  },
  device_nickname: {
    type: String,
  },
  home_id: {
    type: ObjectId,
    ref: 'Home',
  },
  label_btn_1: {
    type: String,
  },
  label_btn_2: {
    type: String,
  },
  label_btn_3: {
    type: String,
  },
  label_btn_4: {
    type: String,
  },
  label_btn_5: {
    type: String,
  },
  label_btn_6: {
    type: String,
  },
  label_btn_7: {
    type: String,
  },
  events: [ {
    type: ObjectId,
    ref: 'Event'
  } ],
} );

module.exports = {
  schema
};