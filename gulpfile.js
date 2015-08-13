'use strict';

var gulp = require('gulp'),
    eslint = require('gulp-eslint'),
    browserify = require('gulp-browserify'),
    concat = require('gulp-concat'),
    sass = require('gulp-sass'),
    prefix = require('gulp-autoprefixer'),
    rename = require('gulp-rename'),
    minifyCSS = require('gulp-minify-css'),
    uglify = require('gulp-uglify');

// JSHint task
gulp.task('lint', function() {
  return gulp.src('js/**/*.js')
    .pipe(eslint())
    .pipe(eslint.format())
    .pipe(eslint.failOnError());
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

gulp.task('minify', ['minifyJS', 'minifyCSS']);

// Browserify task
gulp.task('browserify', function() {
  // Single point of entry
  gulp.src([ './js/main.js' ])
  .pipe(browserify({ insertGlobals: true }))
  // Bundle to a single file
  .pipe(concat('skin.js'))
  // Output it to our dist folder
  .pipe(gulp.dest('./dist/js/'));
});

gulp.task('stylesheets', function() {
  gulp.src('./styles/*.scss')
    .pipe(sass({onError: function(e) { console.log(e); },
      includePaths: [
        'node_modules/foundation-sites/scss',
        'node_modules/utility-belt/scss',
        'node_modules/slick-carousel/slick'
      ]}))
    .pipe(prefix('last 2 versions'))
    .pipe(gulp.dest('./dist/css/'));
});


gulp.task('watch', function() {
  gulp.watch(['./js/**/*.js'], [
    'lint',
    'minifyJS'
  ]);
  gulp.watch(['./styles/**/*.scss'], [
    'stylesheets',
    'minifyCSS'
  ]);
});

gulp.task('default', ['browserify', 'stylesheets']);

gulp.task('dev', ['default', 'watch']);

gulp.task('build', ['default', 'minify']);
