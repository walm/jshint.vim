# jshint.vim

This plugin is a front for the jshint NodeJS cli module.
This plugin will allow you to run jshint from vim, and shows the results in a split window.

## Installation


### jshint

You have to install [jshint](http://jshint.org/), of course.

Install on a system with npm:

    sudo npm install -g jshint

Otherwise, you are on your own.

### The Plugin

Use [pathogen.vim](https://github.com/vim-scripts/pathogen.vim)


## Usage

    :JSHint {file}

It default to current file.

### Keyboard Shortcuts

In the quickfix window, you can use:

    o to open in new window
    go to preview file (open but maintain focus on jshint results)
    q to close the quickfix window



## License

Copyright (c) 2011 Andreas Wålm <andreas@walm.net>, except where otherwise 
noted.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

The Software shall be used for Good, not Evil.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

