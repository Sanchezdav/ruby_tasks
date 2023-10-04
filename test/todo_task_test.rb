# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/todo_task'

class TodoTaskTest < Minitest::Test
  def test_valid_task_creation
    task = TodoTask.new('Walk at morning', 'Walk with my girlfriend and my dog')
    assert_equal 'Walk at morning', task.title
    assert_equal 'Walk with my girlfriend and my dog', task.description
    refute task.completed
  end

  def test_invalid_task_creation
    assert_raises ArgumentError do
      TodoTask.new
    end
  end

  def test_invalid_task_with_only_title
    assert_raises ArgumentError do
      TodoTask.new('Walk at morning')
    end
  end

  def test_mark_as_completed
    task = TodoTask.new('Walk at morning', 'Walk with my girlfriend and my dog')
    refute task.completed
    task.mark_as_completed
    assert task.completed
  end

  def test_task_status
    task = TodoTask.new('Walk at morning', 'Walk with my girlfriend and my dog')
    assert_equal 'Pending', task.status
    task.mark_as_completed
    assert_equal 'Completed', task.status
  end
end
