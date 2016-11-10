"use strict";

var gulp            = require('gulp');
var plumber         = require("gulp-plumber");
var postcss         = require("gulp-postcss");
var precss          = require("precss");
var sourcemaps      = require('gulp-sourcemaps');
var browserSync     = require("browser-sync");
var autoprefixer    = require("autoprefixer");
var mqpacker        = require("css-mqpacker");

// Proxy + watching
gulp.task('server', ['style'], function() {
    browserSync.init({
        proxy: "chelnadezhda.dev"
    });
});

// Compile sass into CSS & auto-inject into browsers
gulp.task('style', function() {
    return gulp.src("postcss/style.css")      
      .pipe(plumber())
      .pipe(sourcemaps.init())
      .pipe(postcss([
        precss(),
        mqpacker({
          sort: true
        }),
        autoprefixer({browsers: [
          "last 1 version",
          "last 2 Chrome versions",
          "last 2 Firefox versions",
          "last 2 Opera versions",
          "last 2 Edge versions"
        ]})
      ]))      
      .pipe(sourcemaps.write())
      .pipe(gulp.dest("css"))
      .pipe(browserSync.reload({stream: true}));
});

gulp.task('reload', function () {
  browserSync.reload();
});

gulp.task('watch', function () {
  gulp.watch("postcss/**/*.css", ['style']);
  gulp.watch("[**/*.{php,tpl}, images/**/*.*, js/**/*.js]", ['reload']);
});

// Default Task
gulp.task('default', ['server', 'watch']);

