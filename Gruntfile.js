module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    sass: {
      options: {
        includePaths: ['bower_components/foundation/scss','bower_components/utility-belt/scss']
      },
      dist: {
        options: {
          outputStyle: 'expanded',
          // sourceComments: 'map',
          // sourceMap: 'css/build/prefixed/skin.css.map'
        },
        files: {
          'css/build/skin.css': 'css/skin.scss'
        }
      }
    },

    autoprefixer: {
      options: {
        browsers: ['last 2 version']
      },
      multiple_files: {
        expand: true,
        flatten: true,
        src: 'css/build/*.css',
        dest: 'css/build/prefixed/'
      }
    },

    cssmin: {
      combine: {
        files: {
          'css/build/minified/skin.css': ['css/build/prefixed/skin.css']
        }
      }
    },

    jshint: {
      beforeconcat: ['js/*.js']
    },

    concat: {
      dist: {
        src: [
          'js/libs/*.js',
          'js/skin.js'
        ],
        dest: 'js/build/production.js'
      }
    },

    uglify: {
      build: {
        src: 'js/build/production.js',
        dest: 'js/build/production.min.js'
      }
    },

    imagemin: {
      dynamic: {
        files: [{
          expand: true,
          cwd: 'images/',
          src: ['**/*.{png,jpg,gif}'],
          dest: 'images/'
        }]
      }
    },

    watch: {
      options: {
        livereload: true,
      },
      scripts: {
        files: ['js/*.js'],
        tasks: ['jshint', 'concat', 'uglify'],
        options: {
          spawn: false,
        }
      },
      css: {
        files: ['css/**/*.scss'],
        tasks: ['sass', 'autoprefixer', 'cssmin'],
        options: {
          spawn: false,
        }
      },
      images: {
        files: ['images/**/*.{png,jpg,gif,svg}', 'images/*.{png,jpg,gif,svg}'],
        tasks: ['imagemin'],
        options: {
          spawn: false,
        }
      }
    },

    connect: {
      server: {
        options: {
          port: 8000,
          base: './',
          livereload: true
        }
      }
    },

  });


  require('load-grunt-tasks')(grunt);

  grunt.registerTask('default', ['concat','uglify','sass','imagemin']);

  grunt.registerTask('dev', ['watch']);
}
