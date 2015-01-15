"use strict";

var gulp = require("gulp");
var jshint = require("gulp-jshint");
var concat = require("gulp-concat");
var rename = require("gulp-rename");
var uglify = require("gulp-uglify");
var sass = require("gulp-sass");
var prefix = require("gulp-autoprefixer");
var cssmin = require("gulp-cssmin");

// Lint JS
gulp.task("lint", function() {
  return gulp.src("./js/*.js")
    .pipe(jshint())
    .pipe(jshint.reporter("default"));
});

// Concat & Minify JS
gulp.task("scripts", function() {
  return gulp.src(["bower_components/jquery-placeholder/jquery.placeholder.js","js/libs/*.js","./js/skin.js"])
    .pipe(concat("all.js"))
    .pipe(gulp.dest("./js/build/"))
    .pipe(rename("skin.min.js"))
    .pipe(uglify())
    .pipe(gulp.dest("./js/build/"));
});

gulp.task("stylesheets", function() {
  return gulp.src("./css/skin.scss")
      .pipe(sass({
        includePaths: ["bower_components/foundation/scss","bower_components/utility-belt/scss","bower_components/slick-carousel/slick"]
      }))
      .pipe(gulp.dest("./css/build/"))
      .pipe(rename("skin.src.css"))
      .pipe(prefix("last 2 version"))
      .pipe(gulp.dest("./css/build/"))
      .pipe(rename("skin.css"))
      .pipe(cssmin())
      .pipe(rename({suffix: ".min"}))
      .pipe(gulp.dest("./css/build/"));
});

gulp.task("watch", function() {
  gulp.watch("./js/**/*.js", ["lint", "scripts"]);
  gulp.watch("./css/**/*.scss", ["stylesheets"]);
});

gulp.task("default", ["scripts","stylesheets"]);

gulp.task("dev", ["watch"]);
