const gulp = require('gulp');
const concat = require('gulp-concat');
const babel = require('gulp-babel');
const sass = require('gulp-sass');
const sourcemap = require('gulp-sourcemaps');


var paths = {
  jsSource: ['./public/js/**/*.js'],
  scssSource: ['./public/css/**/*.scss']
};

gulp.task('js', () => {
  return gulp.src(paths.jsSource)
  .pipe(sourcemap.init())
  .pipe(babel({
    presets: ['es2015']
  }))
  .pipe(concat('bundle.js'))
  .pipe(sourcemap.write('./'))
  .pipe(gulp.dest('./dist'));
});

gulp.task('scss-bundle', () => {
  gulp.src(paths.scssSource)
  .pipe(sass())
  .pipe(concat('styles.css'))
  .pipe(gulp.dest('./dist'));
});

gulp.task('images', () => {
  gulp.src('./public/images/**/*')
  .pipe(gulp.dest('./dist/images'));
});

gulp.task('views', () => {
  gulp.src('./public/views/**/*')
  .pipe(gulp.dest('./dist/views'));
});

gulp.task('build',['js','scss-bundle','images','views'], () => {
  return gulp.src('./public/index.html')
  .pipe(gulp.dest('./dist'));
});

gulp.task('watch', () => {
  gulp.watch(paths.jsSource, ['js']);
  gulp.watch(paths.scssSource, ['scss-bundle']);
  gulp.watch('./public/index.html' , ['views'] );
  gulp.watch('./public/views/**/*' , ['views']);
});


//when "gulp" is input into terminal the tasks below will run ("build" "watch)"
gulp.task('default', [ 'build', 'watch' ]);

