var gulp = require('gulp'),
    autoprefixer = require('gulp-autoprefixer'),
    compass = require('gulp-compass'),
    uglify = require('gulp-uglify'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    notify = require('gulp-notify'),
    del = require('del'),
    cache = require('gulp-cache'),
    rigger = require('gulp-rigger'),
    cleancss = require('gulp-clean-css'),
    path = require('path'),
    browserSync = require('browser-sync');

    gulp.task('sync', function() {
        browserSync({
          server: {
            baseDir: 'html'
          },
        })
      });

gulp.task('html', function() {
    return gulp.src('src/templates/index.tpl')
        .pipe( rigger() )
        .pipe( rename({extname: ".html"}) )
        .pipe( gulp.dest('html/') )
        .pipe( notify({message:"Html task complite"}) );
});

gulp.task('styles', function() {
    gulp.task('styles', function(){
        return gulp.src('src/scss/style.scss')
            .pipe(compass({
                project: path.join(__dirname),
                css: 'src/css',
                sass: 'src/scss',
                image: 'src/images'
            }))
            .pipe( autoprefixer('last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4') )
            .pipe( rename({suffix: '.min'}) )
            .pipe( cleancss() )
            .pipe( gulp.dest('assets/components/modxsite/templates/default/css') )
            .pipe( notify({ message: 'Styles task complete' }) );
    });
});

gulp.task('scripts', function(){
    return gulp.src('src/js/app.js')
        .pipe(rigger())
        .pipe(concat('scripts.js'))
        //.pipe(gulp.dest('assets/components/modxsite/templates/default/js'))
        .pipe(rename({ suffix: '.min' }))
        .pipe(uglify())
        .pipe(gulp.dest('assets/components/modxsite/templates/default/js'))
        .pipe( notify({ message: 'Scripts task complete' }) );
});


gulp.task('watch', function(){
    //gulp.watch('src/templates/**/*.tpl', ['html']);
    gulp.watch('src/scss/**/*.scss', ['styles']);
    gulp.watch('src/js/**/*.js', ['scripts']);
});

gulp.task('build', function() {
    gulp.start('html','styles', 'scripts');
});

gulp.task('clean', function(cb) {
    del(['html/index.html', 'html/css/', 'html/js/'], cb);
});