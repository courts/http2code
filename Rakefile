require 'yard'
require 'rake/clean'

CLEAN.include('doc/', '*.gem')

YARD::Rake::YardocTask.new do |t|
  t.files   = ['bin/http2code', 'lib/request.rb']
  t.options = ['--main', 'README', '--markup', 'markdown']
end
