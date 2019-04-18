const mongoose = require( 'mongoose' );
const Schema = mongoose.Schema;
const ObjectId = Schema.Types.ObjectId;

const schema = new Schema( {

  homeId: {
    type: ObjectId,
    ref: 'Home',
  },
  device_id: {
    type: ObjectId,
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
} );

module.exports = {
  schema
};