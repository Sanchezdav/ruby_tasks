# frozen_string_literal: true

require 'Date'
require_relative 'task_item'
require_relative '../helpers/tasks'

class DeadlineTask < TaskItem
  attr_accessor :due_date

  def initialize(title, description, due_date)
    super(title, description)
    @due_date = due_date
  end

  def parsed_due_date
    @due_date.strftime('%d/%m/%Y')
  end

  def days_until_due
    today = Date.today
    days_until = (@due_date - today).to_i

    if days_until.negative?
      "Due #{days_until} days ago"
    elsif days_until.zero?
      'Due today'
    else
      "#{days_until} days left to due date"
    end
  end

  def details
    "#{super}\nType: Deadline"
  end
end

puts "\n\n--- DeadlineTask ---"
next_month = Date.today.next_month
deadline = DeadlineTask.new('Pay bills', 'Pay internet and car', next_month)
puts deadline.print_attributes
puts "Parsed date: #{deadline.parsed_due_date}"
puts deadline.days_until_due
