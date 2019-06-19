const { Router: router } = require( 'express' );
const { authenticate } = require( '../../middleware' );

const { get } = require( './get' );
const { getEvents } = require( './getEvents' );
const { list } = require( './list' );
const { create } = require( './create' );
const { update } = require( './update' );
const { remove } = require( './remove' );

module.exports = ( models, { config } ) => {
  const api = router();

  api.get( '/', authenticate, list( models, { config } ) );
  api.get( '/:_id', authenticate, get( models, { config } ) );
  api.get( '/:_id/events', authenticate, getEvents( models, { config } ) );
  api.post( '/', authenticate, create( models, { config } ) );
  api.patch( '/:_id', authenticate, update( models, { config } ) );
  api.delete( '/:_id', authenticate, remove( models, { config } ) );
  return api;
};