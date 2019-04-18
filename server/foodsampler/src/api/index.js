const express = require( 'express' );

const { errorHandler } = require( '../middleware' );

//list of models
const { Home } = require( '../models/home' )
const { Device } = require( '../models/device' )
const { Event } = require( '../models/event' )

//list of controllers
const homes = require( '../controllers/homes' )
const devices = require( '../controllers/devices' )
const events = require( '../controllers/events' )

//combine models into one object
const models = { Home, Device, Event };

const routersInit = config => {
  const router = express();

  //register api points
  router.use( '/homes', homes( models, { config } ) );
  router.use( '/devices', devices( models, { config } ) );
  router.use( '/events', events( models, { config } ) );

  //catch api all errors
  router.use( errorHandler );
  return router;
};

module.exports = routersInit;