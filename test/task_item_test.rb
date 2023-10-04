# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/task_item'

class TaskItemTest < Minitest::Test
  def test_valid_task_creation
    task = TaskItem.new('Buy fruits', 'Apples, Bananas, Oranges and Grapes')
    assert_equal 'Buy fruits', task.title
    assert_equal 'Apples, Bananas, Oranges and Grapes', task.description
    refute task.completed
  end

  def test_invalid_task_creation
    assert_raises ArgumentError do
      TaskItem.new
    end
  end

  def test_invalid_task_with_only_title
    assert_raises ArgumentError do
      TaskItem.new('Buy fruits')
    end
  end

  def test_mark_as_completed
    task = TaskItem.new('Buy fruits', 'Apples, Bananas, Oranges and Grapes')
    refute task.completed
    task.mark_as_completed
    assert task.completed
  end
end
