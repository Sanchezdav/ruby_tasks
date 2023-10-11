# frozen_string_literal: true

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

  def details
    "Title: #{@title}\nDescription: #{@description}\nState: #{@completed ? 'Completed' : 'Pending'}"
  end

  def add_custom_attribute(attr_name, attr_value)
    # "send" method allows us to call another method by its name so
    # we are defining a new method using the attr_name then we get the value
    self.class.send(:define_method, attr_name.to_sym) do
      instance_variable_get("@#{attr_name}")
    end

    # Here we are defining the setter method for the attribute, the method
    # which will allow us to set the value of the attribute
    self.class.send(:define_method, "#{attr_name}=".to_sym) do |value|
      instance_variable_set("@#{attr_name}", value)
    end

    # Finally we set the value of the new attribute
    instance_variable_set("@#{attr_name}", attr_value)
  end
end

puts '--- TaskItem ---'
task = TaskItem.new('Buy fruits', 'Apples, Bananas, Oranges and Grapes')
puts task.print_attributes
task.mark_as_completed
puts task.print_attributes
