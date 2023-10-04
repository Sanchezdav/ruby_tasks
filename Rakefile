require 'rake/testtask'
# https://ruby-doc.org/stdlib-2.0.0/libdoc/rake/rdoc/Rake/TestTask.html

task default: %w[test]

Rake::TestTask.new do |t|
  t.pattern = "test/*_test.rb"
end

task :run do
  ruby 'lib/task_manager.rb'
end
