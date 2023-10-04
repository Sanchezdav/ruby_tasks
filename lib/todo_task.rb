# frozen_string_literal: true

require_relative './task_item'
require_relative '../helpers/tasks'

class TodoTask < TaskItem
  include Helpers::Tasks

  def initialize(title, description)
    super(title, description)
  end

  def status
    @completed ? "Completed" : "Pending"
  end

  def get_details
    super + "\nType: ToDo"
  end
end

puts "\n\n--- TodoTask ---"
todo = TodoTask.new("Walk at morning", "Walk with my girlfriend and my dog")
puts todo.print_attributes
puts todo.status
todo.mark_as_completed
puts todo.status
