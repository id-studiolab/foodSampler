const {
  spawn
} = require('child_process');
const gulp = require('gulp');
const nodemon = require('gulp-nodemon');
const apidoc = require('gulp-apidoc');


gulp.task('api', () => nodemon({
  script: './bin/www',
  watch: ['./src']
}));

gulp.task('mongo', (callback) => {
  const dbProcess = spawn('mongod');
  dbProcess.on('data', console.log);
  dbProcess.on('close', (code) => {
    console.log(`Database was stopped with code ${code}`);
    callback();
  });
});

gulp.task('apidoc', function(done){
          apidoc({
            src: "./",
            dest: "./doc",
            includeFilters: [ "src/controllers.*\\.js$" ]
          },done);
});

gulp.task('run:dev', ['mongo', 'api']);
