module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    sass: {
      options: {
        includePaths: ['bower_components/foundation/scss','bower_components/slick-carousel/slick']
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
      single_file: {
        options: {
          // Target-specific options go here.
        },
        src: 'css/build/skin.css',
        dest: 'css/build/skin.pre.css'
      }
    },

    cssmin: {
      combine: {
        files: {
          'css/build/skin.min.css': ['css/build/skin.pre.css']
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
        dest: 'js/build/skin.js'
      }
    },

    uglify: {
      build: {
        src: 'js/build/skin.js',
        dest: 'js/build/skin.min.js'
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
        livereload: false,
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
    }

  });


  require('load-grunt-tasks')(grunt);

  grunt.registerTask('default', ['concat','uglify','sass','imagemin']);

  grunt.registerTask('dev', ['watch']);
}
