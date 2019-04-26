/**
 * @api {get} /homes/:id/events getEventsByHome
 * @apiName getHomeByID
 * @apiGroup Home
 *
 * @apiSuccess {Array} data about a home
 * @apiSuccessExample {json} Success-Response:
 *     {
 *    "home": {
 *        "_id": "5cb72ad66ac4d24f89bb4c11",
 *        "nick_name": "romagnetti_home",
 *        "address": "walenburgerweg 62a",
 *        "__v": 0
 *        }
 *    }
 */

const getEvents = ( { Home, Device, Event }, { config } ) => async ( req, res, next ) => {

  const { _id } = req.params;

  try {
    const home = await Home.findOne( { _id } )
      .populate( {
        path: 'devices',
        populate: {
          path: 'events',
        }
      } )

    res.status( 200 ).send( { home } );
  } catch ( error ) {
    next( error );
  }


  // try {
  //   const home = await Home.findOne( { _id } )
  //     .populate( 'devices' )
  //     .populate( 'events' );
  //   res.status( 200 ).send( { home } );
  // } catch ( error ) {
  //   next( error );
  // }


};

module.exports = { getEvents };