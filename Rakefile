require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('alter-ego-activerecord', '0.1.2') do |p|
  p.description = "Adapter to allow ActiveRecord to persist and restore state of objects using the AlterEgo state machine"
  p.author = "Paul Hieromnimon"
  p.email = "paul.hieromnimon@gmail.com"
  p.url = "http://github.com/pavlos/alter-ego-activerecord"
  p.runtime_dependencies = ["activerecord >=2.3.5", "alter-ego >=1.0.1" ]
  p.ignore_pattern = ["*.sqlite"]
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test' 
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end
