module.exports = (grunt) ->
    grunt.initConfig

        watch:
            src:
                files: [
                    "src/**/*.coffee",
                ]
                tasks: ["coffee"]
                options:
                    livereload: yes

        coffee:
            app:
                options:
                    sourceMaps: yes
                expand: yes
                cwd:  "src"
                src:  [ "*.coffee","**/*.coffee" ]
                dest: "static"
                ext: ".js"

    grunt.loadNpmTasks "grunt-contrib-coffee"
    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-notify"

    grunt.registerTask "default", [
        "watch"
    ]
