const express = require( 'express' );

const { errorHandler } = require( '../middleware' );

//list of models
const { Home } = require( '../models/home' )
const { Device } = require( '../models/device' )
const { Event } = require( '../models/event' )
const { User } = require( '../models/user' )


//list of controllers
const homes = require( '../controllers/homes' )
const devices = require( '../controllers/devices' )
const events = require( '../controllers/events' )
const users = require( '../controllers/users' )

const auth = require( '../controllers/auth' )

//combine models into one object
const models = { Home, Device, Event, User };

const routersInit = config => {
  const router = express();

  //register api points
  router.use( '/homes', homes( models, { config } ) );
  router.use( '/devices', devices( models, { config } ) );
  router.use( '/events', events( models, { config } ) );
  router.use( '/users', users( models, { config } ) );

  router.use( '/auth', auth( models, { config } ) );

  //catch api all errors
  router.use( errorHandler );
  return router;
};

module.exports = routersInit;