module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'
        coffeelint:
            app:
                files:
                    src: [
                        'Gruntfile.coffee'
                        'Resources/**/*.coffee'
                    ]
                options:
                    indentation:
                        level: 'ignore'
                    max_line_length:
                        level: 'warn'
        coffee:
            src:
                expand: true
                cwd: 'Resources'
                dest: 'Resources'
                src: [
                    '*.coffee'
                ]
                ext: '.js'
            options:
                bare: yes
        scandium:
            buildonly:
                platform: 'ios'
                project_dir: './'
                force: true
                build_only: true
        watch:
            scripts:
                files: [
                    'Gruntfile.coffee'
                    'Resources/**/*.coffee'
                ]
                tasks: [
                    'coffeelint'
                    'coffee'
                ]
                options:
                    interrupt: yes

    grunt.loadNpmTasks 'grunt-coffeelint'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-scandium'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'default', [
        'coffeelint'
        'coffee'
    ]

    grunt.registerTask 'clean', [
        'scandium-clean'
        'scandium'
    ]