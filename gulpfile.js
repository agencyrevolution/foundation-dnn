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

// Browserify task
gulp.task('browserify-min', function() {
  // Single point of entry
  gulp.src([ './scripts/main.js' ])
  .pipe(browserify({
    insertGlobals: true,
    debug: true
  }))
  // Bundle to a single file
  .pipe(concat('skin.js'))
  // Output it to our dist folder
  .pipe(gulp.dest('./dist/js/'))
  .pipe(uglify())
  .pipe(rename({ suffix: '.min' }))
  .pipe(gulp.dest('./dist/js/'));
});

gulp.task('stylesheets', function() {
  gulp.src('./styles/*.scss')
    .pipe(sass({onError: function(e) { console.log(e); },
      includePaths: [
        'styles/vendor/foundation/scss',
        'styles/vendor/utility-belt/scss',
        'styles/vendor/slick/slick'
      ]}))
    .pipe(prefix('last 2 versions'))
    .pipe(gulp.dest('./dist/css/'));
});

gulp.task('stylesheets-min', function() {
  gulp.src('./styles/*.scss')
    .pipe(sass({onError: function(e) { console.log(e); },
      includePaths: [
        'styles/vendor/foundation/scss',
        'styles/vendor/utility-belt/scss',
        'styles/vendor/slick/slick'
      ]}))
    .pipe(prefix('last 2 versions'))
    .pipe(gulp.dest('./dist/css/'))
    .pipe(minifyCSS())
    .pipe(rename({ suffix: '.min' }))
    .pipe(gulp.dest('./dist/css/'));
});

gulp.task('minifyJS', function() {
  gulp.src(['dist/js/*.js', '!dist/js/*.min.js'])
  .pipe(uglify())
  .pipe(rename({ suffix: '.min' }))
  .pipe(gulp.dest('./dist/js/'));
});

gulp.task('minifyCSS', function() {
  gulp.src(['dist/css/*.css', '!dist/css/*.min.css'])
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

gulp.task('watch-all', ['lint'], function() {
  gulp.watch(['./scripts/*.js', './scripts/**/*.js'],[
    'lint',
    'browserify-min'
  ]);
  gulp.watch(['./styles/*.scss', './styles/**/*.scss'], [
    'stylesheets-min'
  ]);
});

gulp.task('default', ['browserify','stylesheets']);

gulp.task('dev', ['default','watch']);

gulp.task('build', ['default','minify']);

gulp.task('build-watch', ['default','watch-all']);