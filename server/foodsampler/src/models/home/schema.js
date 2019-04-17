const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const ObjectId = Schema.Types.ObjectId;

const schema = new Schema({
  homeId: {
    type: ObjectId,
  },
  nick_name: {
    type: String,
    required: [true],
  },
  address: {
    type: String,
  },


});

module.exports = { schema };
