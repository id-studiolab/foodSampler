const winston = require( 'winston' );
require( 'winston-mongodb' );
const { mongoManager } = require( './src/mongo/MongoManager' );


let logger = winston.createLogger( {
  transports: [
    new( winston.transports.MongoDB )( { db: mongoManager.getMongoUrl() } ),
  ],
  exitOnError: false, // do not exit on handled exceptions
} );


module.exports = logger;