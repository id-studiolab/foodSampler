const mongoose = require('mongoose');
const { schema } = require('./schema');
const Home = mongoose.model('Home', schema);


module.exports = { Home };
