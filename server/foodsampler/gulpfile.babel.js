import gulp from 'gulp'

const {
  spawn
} = require( 'child_process' );
const nodemon = require( 'gulp-nodemon' );
const apidoc = require( 'gulp-apidoc' );


const api = () => {
  nodemon( {
    script: './bin/www',
    watch: [ './' ]
  } );
}

const mongo = ( callback ) => {
  const dbProcess = spawn( 'mongod' );
  dbProcess.on( 'data', console.log );
  dbProcess.on( 'close', ( code ) => {
    console.log( `Database was stopped with code ${code}` );
    callback();
  } );
}

const doc = ( done ) => {
  apidoc( {
    src: "./",
    dest: "./doc",
    includeFilters: [ "src/controllers.*\\.js$" ],
    //debug: true
  }, done );
}

const generateDoc = gulp.parallel( doc )
generateDoc.description = 'generate api doc'

const server = gulp.parallel( mongo, api );
server.description = "run the server"

const defaultTasks = gulp.parallel( server )
export default defaultTasks

export {
  server,
  generateDoc
}