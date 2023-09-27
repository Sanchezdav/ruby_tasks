require_relative '../helpers/tasks'

class TaskItem
  include Helpers::Tasks

  attr_accessor :title, :description, :completed

  def initialize(title, description)
    @title = title
    @description = description
    @completed = false
  end
end

task = TaskItem.new("Buy fruits", "Apples, Bananas, Oranges and Grapes")
puts task.print_attributes
