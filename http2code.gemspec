# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{http2code}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Hof"]
  s.date = %q{2012-04-04}
  s.email = %q{courts@offensivethinking.org}
  s.files = ["bin/http2code", "lib/request.rb", "lib/templates/ruby/typhoeus", "lib/templates/ruby/curb"]
  s.executables = ["http2code"]
  s.homepage = %q{http://www.offensivethinking.org}
  s.require_paths = ["lib"]
  s.summary = %q{A script to turn a raw HTTP GET or POST request into template code snippets for different languages}
end
