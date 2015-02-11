'use strict';

var gulp = require('gulp'),
    jshint = require('gulp-jshint'),
    browserify = require('gulp-browserify'),
    concat = require('gulp-concat'),
    sass = require('gulp-sass'),
    prefix = require('gulp-autoprefixer'),
    rename = require('gulp-rename'),
    minifyCSS = require('gulp-minify-css'),
    uglify = require('gulp-uglify');

// JSHint task
gulp.task('lint', function() {
  gulp.src('./scripts/*.js')
    .pipe(jshint())
    .pipe(jshint.reporter('default'));
});

// Browserify task
gulp.task('browserify', function() {
  // Single point of entry
  gulp.src([ './scripts/main.js' ])
  .pipe(browserify({
    insertGlobals: true,
    debug: true
  }))
  // Bundle to a single file
  .pipe(concat('skin.js'))
  // Output it to our dist folder
  .pipe(gulp.dest('./dist/js/'));
});

gulp.task('stylesheets', function() {
  gulp.src('./styles/*.scss')
      .pipe(sass({onError: function(e) { console.log(e); },
        includePaths: [
          'node_modules/zurb-foundation-5/scss',
          'node_modules/utility-belt/scss',
          'node_modules/slick-carousel/slick'
        ]}))
      .pipe(prefix('last 2 versions'))
      .pipe(gulp.dest('./dist/css/'));
});

gulp.task('minifyJS', function() {
  gulp.src('./dist/js/*.js')
  .pipe(uglify())
  .pipe(rename({ suffix: '.min' }))
  .pipe(gulp.dest('./dist/js/'));
});

gulp.task('minifyCSS', function() {
  gulp.src('./dist/css/*.css')
    .pipe(minifyCSS())
    .pipe(rename({ suffix: '.min' }))
    .pipe(gulp.dest('./dist/css/'));
});

gulp.task('minify', ['minifyJS','minifyCSS']);

gulp.task('watch', ['lint'], function() {
  gulp.watch(['./scripts/*.js', './scripts/**/*.js'],[
    'lint',
    'browserify'
  ]);
  gulp.watch(['./styles/*.scss', './styles/**/*.scss'], [
    'stylesheets'
  ]);
});

gulp.task('default', ['browserify','stylesheets']);

gulp.task('dev', ['default','watch']);

gulp.task('build', ['default', 'minify']);
