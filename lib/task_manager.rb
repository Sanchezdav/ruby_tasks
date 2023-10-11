# frozen_string_literal: true

require_relative 'todo_task'
require_relative 'deadline_task'
require_relative 'task_queue'

class TaskManager
  ERROR_MESSAGE = 'Invalid index'

  def initialize
    @tasks = []
    @task_queue = TaskQueue.new
  end

  def add_task(task)
    @tasks << task
    @task_queue.enqueue(task)
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

  def complete_overdue_tasks_in_background
    @task_queue.process_tasks do |task|
      if task.overdue?
        task.mark_as_completed
        puts "Task: '#{task.title}', marked as completed (overdue)."
      else
        puts "Task: '#{task.title}', not overdue."
      end
    end
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

puts "\n>>>> Adding a custom attribute to a TodoTask"
todo.add_custom_attribute('priority', 'High')
puts todo.print_attributes

# Threading logs
# Uncomment the following lines to see the threading logs
#
# puts "\n>>>> Threading"
# task_manager = TaskManager.new
# puts 'TaskManager Created'

# next_month = Date.today.next_month
# previous_month = Date.today - 5
# deadline = DeadlineTask.new('Pay bills', 'Pay internet and car', next_month)
# task_manager.add_task(deadline)
# puts "DeadlineTask Created"

# 4.times do |i|
#   index = i + 1
#   deadline = DeadlineTask.new("Task-#{index}", 'Overdue task', previous_month)
#   task_manager.add_task(deadline)
#   puts "DeadlineTask Overdue #{index} Created"
# end

# puts "\n>>>> Completing overdue tasks in background"
# task_manager.complete_overdue_tasks_in_background
# puts 'All tasks completed'
