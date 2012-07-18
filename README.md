Prerequisites
-------------
Install the `rails_refactor` gem with: `gem install rails_refactor`

Rails Refactor TextMate Bundle
------------------------------

TextMate bundle for executing the `rails_refactor` gem commands.

Installation
============

To install via Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/Tricon/rails-refactor.tmbundle.git "Rails Refactor.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

Features
=================

Currently only `rename controller` is implemented. To run, press:

`⌥⌘R`

Enter the name of the old controller (without "Controller") in the first dialog. Enter the name of the new controller (without "Controller") in the second dialog.

Please fork and contribute!