require_relative '../helpers/tasks'

class TaskItem
  include Helpers::Tasks

  attr_accessor :title, :description, :completed

  def initialize(title, description)
    @title = title
    @description = description
    @completed = false
  end

  def mark_as_completed
    @completed = true
  end
end

puts "--- TaskItem ---"
task = TaskItem.new("Buy fruits", "Apples, Bananas, Oranges and Grapes")
puts task.print_attributes
task.mark_as_completed
puts task.print_attributes
