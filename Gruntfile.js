module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        /* Watch task : SASS  */
        sass: {
            dist: {
                options: {
                    style: 'expanded'
                },
                files: {
                    'src/mister_cobol_web/static/css/style.css': 'sass/style.scss',
                }
            }
        },
        watch: {
            html: {
                files: '**/*.html'
            },
            css: {
                files: '**/*.scss',
                tasks: ['sass']
            },
            coffee: {
                files: 'coffee/*.coffee',
                tasks: ['coffee']
            },
            uglify: {
                files: 'src/mister_cobol_web/static/js/features.js',
                tasks: ['uglify']
            },
            options: {
                livereload: true
            }
        },
        coffee: {
            compile: {
                files: {
                    'src/mister_cobol_web/static/js/features.js': 'coffee/features.coffee'
                }
            },
        },
        uglify: {
            my_target: {
                files: {
                'src/mister_cobol_web/static/js/features.min.js': ['src/mister_cobol_web/static/js/features.js']
                }
            }
        }
    });

    // These plugins provide necessary tasks.
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-livereload');

    // Launch task.
    grunt.registerTask('default', ['watch']);

};
