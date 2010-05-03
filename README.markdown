# Kharites-tools

Gem to provide several tools to [Kharites](http://github.com/jpablobr/kharites)

## Installation ##

For the latest stable version:

    sudo gem install Kharites-tools

Or from source:

    git clone git://github.com/jpablobr/kharites-tools.git
    cd kharites-tools
    rake install

## Usage ##

Enter `Kharites`

Kharites will set up a basic site structure for you with this command:

    kharites generate <article>

After this command you'll have the following files:

      .
      `-- <article>
          |-- article.kharites
          |-- public
          |   |-- images
          |   |-- javascripts
          |   `-- stylesheets
          `-- views
              |-- application.sass
              |-- index.haml
              `-- layout.haml

Kharites sets you up with a sample layout, stylesheet and page file. 

    kharites server

Load this URL in your browser:

    http://localhost:4567/ariticles/article

You’re done. SRSLY.

## TODO ##

   * Add commands for install, start, sync (for [Post receive hooks](http://github.com/guides/post-receive-hooks)), deploy, etc...

## Note on Patches/Pull Requests ##

Fork the project.
Make your feature addition or bug fix.
Add tests for it. This is important so I don’t break it in a future version unintentionally.
Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
Send me a pull request. Bonus points for topic branches.

## Copyright ##

Copyright 2009 Jose Pablo Barrantes. MIT Licence, so go for it.
