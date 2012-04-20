# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{http2code}
  s.version = "0.0.3"
  s.authors = ["Patrick Hof"]
  s.date = %q{2012-04-20}
  s.email = %q{courts@offensivethinking.org}
  s.files = %w(bin/http2code lib/http2code/request.rb lib/http2code/templates/ruby/typhoeus lib/http2code/templates/ruby/curb lib/templates/ruby/net_http)
  s.executables = ["http2code"]
  s.homepage = %q{http://www.offensivethinking.org}
  s.require_paths = ["lib"]
  s.summary = %q{A script to turn a raw HTTP GET or POST request into template code snippets for different languages}
end
