# frozen_string_literal: true

# https://ruby-doc.org/stdlib-2.0.0/libdoc/rake/rdoc/Rake/TestTask.html
require 'rake/testtask'

# https://github.com/rubocop/rubocop/blob/master/lib/rubocop/rake_task.rb
require 'rubocop/rake_task'

task default: %w[lint test]

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'test/**/*.rb']
  task.fail_on_error = false
end

Rake::TestTask.new do |t|
  t.pattern = 'test/*_test.rb'
end

namespace :task do
  desc 'it runs the task manager'
  task :manager do
    ruby 'lib/task_manager.rb'
  end

  desc 'it runs the task item'
  task :item do
    ruby 'lib/task_item.rb'
  end

  desc 'it runs the todo task'
  task :todo do
    ruby 'lib/todo_task.rb'
  end

  desc 'it runs the deadline task'
  task :deadline do
    ruby 'lib/deadline_task.rb'
  end
end
