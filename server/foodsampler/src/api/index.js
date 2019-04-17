const express = require( 'express' );

const { errorHandler } = require( '../middleware' );

//list of models
const { Home } = require( '../models/home' )
const { Device } = require( '../models/device' )

//list of controllers
const homes = require( '../controllers/homes' )
const devices = require( '../controllers/devices' )

//combine models into one object
const models = { Home, Device };

const routersInit = config => {
  const router = express();

  //register api points
  router.use( '/homes', homes( models, { config } ) );
  router.use( '/devices', devices( models, { config } ) );

  //catch api all errors
  router.use( errorHandler );
  return router;
};

module.exports = routersInit;