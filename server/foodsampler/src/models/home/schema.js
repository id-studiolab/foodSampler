const mongoose = require( 'mongoose' );
const Schema = mongoose.Schema;
const ObjectId = Schema.Types.ObjectId;

const schema = new Schema( {
  home_id: {
    type: ObjectId,
  },
  nick_name: {
    type: String,
    required: [ true ],
  },
  address: {
    type: String,
  },
  devices: [ {
    type: ObjectId,
    ref: 'Device'
  } ],

} );

module.exports = { schema };