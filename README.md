http2code
=========

Author:      Patrick Hof <courts@offensivethinking.org>  
License:     [CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/legalcode)

Download:    git clone http://github.com/courts/http2code.git  
YARD docs:   [http://courts.github.com/http2code](http://courts.github.com/http2code)

http2code is simple templating system for translating a raw HTTP GET or POST
request into source code for replaying that request. It basically reads the
request from stdin and returns the parsed request as JSON data. It optionally
gives you the possibility to automatically add this data to a predefined
template, which will then be output to stdout. See the existing templates for
further information.

Command Line Usage
------------------
    Usage: http2code [options]
        -n, --newlines                   Use \n as line delimiter when parsing the POST request instead of \r\n
        -t, --template TEMPLATE          Use template TEMPLATE
        -b, --header-blacklist           Use header blacklist to automatically remove common headers not needed
        -p, --no-pretty-printing         Do not pretty print JSON data (may be required for some templates)
        -h, --help                       Show this help

    Available Templates:
    --------------------
    ruby/net_http
    ruby/curb
    ruby/typhoeus

    If no template is given, only the JSON data of the parsed HTTP request will be output.

Examples
--------

With an HTTP GET or POST request saved in req.txt:

    http2code -n -t ruby/typhoeus < req.txt

RubyGems
--------

A gemspec file is included, so you can build and install http2code as a gem with:

    gem build http2code.gemspec
    gem install http2code-x.x.x.gem
