# Kharites-tools

Gem to provided several tools for Kharites

## Installation ##

For the latest stable version:

` sudo gem install kharites-tools`

Or from source:

    git clone git://github.com/jpablobr/kharites-tools.git
    cd kharites-tools
    rake install

Enter **Kharites**.

## Usage ##

StaticMatic will set up a basic site structure for you with this command:

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

Load this URL in your browser:

    http://localhost:4567/ariticles/article

You’re done. SRSLY.

## TOOD ##

   * Add commands for install, start, sync [Post receive hooks](http://github.com/guides/post-receive-hooks), deploy, etc...

## Note on Patches/Pull Requests ##

Fork the project.
Make your feature addition or bug fix.
Add tests for it. This is important so I don’t break it in a future version unintentionally.
Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
Send me a pull request. Bonus points for topic branches.

## Copyright ##

Copyright 2009 Jose Pablo Barrantes. MIT Licence, so go for it.
