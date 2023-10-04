# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/deadline_task'

class DeadlineTaskTest < Minitest::Test
  def test_valid_task_creation
    next_month = Date.today.next_month
    deadline = DeadlineTask.new('Pay bills', 'Pay internet and car', next_month)
    assert_equal 'Pay bills', deadline.title
    assert_equal 'Pay internet and car', deadline.description
    assert_equal next_month, deadline.due_date
    refute deadline.completed
  end

  def test_invalid_task_creation
    assert_raises ArgumentError do
      DeadlineTask.new
    end
  end

  def test_invalid_task_with_only_title
    assert_raises ArgumentError do
      DeadlineTask.new('Pay bills')
    end
  end

  def test_mark_as_completed
    next_month = Date.today.next_month
    deadline = DeadlineTask.new('Pay bills', 'Pay internet and car', next_month)
    refute deadline.completed
    deadline.mark_as_completed
    assert deadline.completed
  end

  def test_parsed_due_date
    next_month = Date.today.next_month
    deadline = DeadlineTask.new('Pay bills', 'Pay internet and car', next_month)
    assert_equal next_month.strftime('%d/%m/%Y'), deadline.parsed_due_date
  end
end
