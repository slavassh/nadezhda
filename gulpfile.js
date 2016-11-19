"use strict";

var gulp            = require('gulp');
var plumber         = require("gulp-plumber");
var postcss         = require("gulp-postcss");
var precss          = require("precss");
var inlinesvg       = require("postcss-inline-svg");
var inlinesvgopt    = require('postcss-svgo');
var svgFallback     = require('postcss-svg-fallback')
var sourcemaps      = require('gulp-sourcemaps');
var browserSync     = require("browser-sync");
var autoprefixer    = require("autoprefixer");
var mqpacker        = require("css-mqpacker");

var paths = {  
  css:['postcss/**/*.css'],
  other:['images/**/*.*',
         '*.tpl',
         'js/**/*.js',
         'main_menu/**/*.tpl',
         'widgets/**/*.tpl']
};

gulp.task('server', ['style'], function() {
    browserSync.init({
        proxy: "chelnadezhda.dev"
    });
});

gulp.task('style', function() {
    return gulp.src("postcss/style.css")
      .pipe(plumber())
      .pipe(sourcemaps.init())
      .pipe(postcss([
        precss(),
        inlinesvg(),
        inlinesvgopt(),
        mqpacker({
          sort: true
        }),
        autoprefixer({browsers: [
          "last 2 version",
          "not ie <= 8"
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
  gulp.watch(paths.css, ['style']);
  gulp.watch(paths.other, ['reload']);
});

// Default Task
gulp.task('default', ['server', 'watch']);

