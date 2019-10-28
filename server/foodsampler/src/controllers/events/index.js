const { Router: router } = require( 'express' );
const { authenticate } = require( '../../middleware' );


const { get } = require( './get' );
const { list } = require( './list' );
const { create } = require( './create' );
const { remove } = require( './remove' );

module.exports = ( models, { config } ) => {
  const api = router();

  api.get( '/', authenticate, list( models, { config } ) );
  api.get( '/:_id', authenticate, get( models, { config } ) );
  api.post( '/', create( models, { config } ) );
  api.delete( '/:_id', authenticate, remove( models, { config } ) );

  return api;
};