const { Router: router } = require( 'express' );

const { get } = require( './get' );
const { getEvents } = require( './getEvents' );
const { list } = require( './list' );
const { create } = require( './create' );
const { update } = require( './update' );
const { remove } = require( './remove' );

module.exports = ( models, { config } ) => {
  const api = router();

  api.get( '/', list( models, { config } ) );
  api.get( '/:_id', get( models, { config } ) );
  api.get( '/:_id/events', getEvents( models, { config } ) );
  api.post( '/', create( models, { config } ) );
  api.patch( '/:_id', update( models, { config } ) );
  api.delete( '/:_id', remove( models, { config } ) );
  return api;
};