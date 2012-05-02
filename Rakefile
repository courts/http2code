require 'yard'
require 'rake/clean'

CLEAN.include('doc/', '*.gem')

task :build do
  puts `gem build http2code.gemspec`
end

task :install => [:clean, :build] do
  puts `gem install http2code-*.gem`
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['bin/http2code', 'lib/http2code/request.rb']
  t.options = ['--main', 'README.markdown', '--markup', 'markdown']
end
