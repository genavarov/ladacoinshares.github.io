module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    bower:
      install:
        options:
          copy: false

    clean:
      dist: [
        "_site",
        "bower_components",
        "node_modules",
        ".sass-cache",
        "_src/sass/bourbon",
        "assets/javascripts/*",
        "assets/stylesheets/*"
      ]

    concat:
      js:
        src: [
          "bower_components/jquery/dist/jquery.min.js",
          "_src/js/jquery.plugin.min.js",
          "_src/js/jquery.countdown.min.js",
          "_src/js/scripts.js"
        ]
        dest: "assets/javascripts/scripts.js"


    haml:
      dist:
        files:
          "index.html": "_src/haml/index.haml"

    jekyll:
      dist: {}

    sass:
      dist:
        files:
          "assets/stylesheets/styles.css": "_src/sass/styles.sass"

    watch:
      haml:
        files: ["_src/haml/*.haml", "_src/haml/*.html"],
        tasks: ["haml"]

      jekyll:
        files: ["*.html"]
        tasks: ["jekyll:dist"]

      sass:
        files: ["_src/sass/*.sass", "_src/sass/*.scss", "_src/sass/*.css"]
        tasks: ["sass"]

  grunt.loadNpmTasks "grunt-bower-task"
  grunt.loadNpmTasks "grunt-jekyll"
  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-haml"
  grunt.loadNpmTasks "grunt-contrib-sass"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.registerTask "default", ["sass", "haml", "bower", "concat", "jekyll:dist"]

