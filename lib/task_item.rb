class TaskItem
  attr_accessor :title, :description, :completed

  def initialize(title, description)
    @title = title
    @description = description
    @completed = false
  end
end

task = TaskItem.new("Buy fruits", "Apples, Bananas, Oranges and Grapes")
puts "Title: #{task.title}, Description: '#{task.description}', Completed: #{task.completed}"
