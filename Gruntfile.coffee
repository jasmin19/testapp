module.exports = (grunt) ->
    grunt.initConfig

        watch:
            src:
                files: [
                    "src/*.coffee",
                ]
                tasks: [ "coffee"]
                options:
                    livereload: yes

        coffee:
            options:           # coffee compile options
                sourceMaps: yes
            expand: yes        # use dynamic glob patterns when expanding src
            cwd: "src"  # all src paths are relative to here
            src:  [ "**/*.coffee" ]
            dest: ""
            ext: ".js"

    grunt.loadNpmTasks "grunt-contrib-coffee"
    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-notify"

    grunt.registerTask "default", [
        "watch"
    ]
