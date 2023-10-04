# frozen_string_literal: true

require_relative 'todo_task'
require_relative 'deadline_task'

class TaskManager
  ERROR_MESSAGE = 'Invalid index'

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def list_tasks
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task.details}"
    end
  end

  def mark_task_completed(index)
    return ERROR_MESSAGE unless valid_index?(index)

    @tasks[index].mark_as_completed
  end

  def remove_task(index)
    return ERROR_MESSAGE unless valid_index?(index)

    @tasks.delete_at(index)
  end

  private

  def valid_index?(index)
    index >= 0 && index < @tasks.length
  end
end

puts "\n\n--- TaskManager ---"

todo = TodoTask.new('Walk at morning', 'Walk with my girlfriend and my dog')
puts 'TodoTask Created'

next_month = Date.today.next_month
deadline = DeadlineTask.new('Pay bills', 'Pay internet and car', next_month)
puts 'DeadlineTask Created'

task_manager = TaskManager.new
puts 'TaskManager Created'

puts "\n>>>> Adding tasks to TaskManager"
task_manager.add_task(todo)
task_manager.add_task(deadline)

puts "\n>>>> Listing tasks"
task_manager.list_tasks

puts "\n>>>> Marking first task as completed"
task_manager.mark_task_completed(0)
puts todo.print_attributes

puts "\n>>>> Removing last task"
task_manager.remove_task(1)
task_manager.list_tasks
