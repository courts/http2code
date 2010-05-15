# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{http2code}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Hof"]
  s.date = %q{2010-04-14}
  s.email = %q{courts@offensivethinking.org}
  s.files = ["bin/http2code", "lib/request.rb", "lib/templates/ruby/typhoeus"]
  s.executables = ["http2code"]
  s.homepage = %q{http://www.offensivethinking.org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A script to turn a raw HTTP GET or POST request into template code snippets for different languages}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
