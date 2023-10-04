require 'minitest/autorun'
require_relative '../lib/task_manager'
require_relative '../lib/todo_task'
require_relative '../lib/deadline_task'

class TaskManagerTest < Minitest::Test
  def test_adding_todo_task
    manager = TaskManager.new
    todo = TodoTask.new("Walk at morning", "Walk with my girlfriend and my dog")

    manager.add_task(todo)

    assert_equal 1, manager.list_tasks.length
    assert_includes manager.list_tasks, todo
  end

  def test_adding_deadline_task
    manager = TaskManager.new
    next_month = Date.today.next_month
    deadline = DeadlineTask.new("Pay bills", "Pay internet and car", next_month)

    manager.add_task(deadline)

    assert_equal 1, manager.list_tasks.length
    assert_includes manager.list_tasks, deadline
  end

  def test_mark_task_completed
    manager = TaskManager.new
    todo = TodoTask.new("Walk at morning", "Walk with my girlfriend and my dog")

    manager.add_task(todo)
    refute todo.completed

    manager.mark_task_completed(0)
    assert todo.completed
  end

  def test_invalid_mark_task_completed
    manager = TaskManager.new
    todo = TodoTask.new("Walk at morning", "Walk with my girlfriend and my dog")

    manager.add_task(todo)
    refute todo.completed

    assert_equal manager.mark_task_completed(1), TaskManager::ERROR_MESSAGE
  end

  def test_remove_task
    manager = TaskManager.new
    todo = TodoTask.new("Walk at morning", "Walk with my girlfriend and my dog")

    manager.add_task(todo)
    assert_equal 1, manager.list_tasks.length

    manager.remove_task(0)
    assert_empty manager.list_tasks
  end

  def test_invalid_remove_task
    manager = TaskManager.new
    todo = TodoTask.new("Walk at morning", "Walk with my girlfriend and my dog")

    manager.add_task(todo)
    assert_equal 1, manager.list_tasks.length

    manager.remove_task(1)
    assert_equal manager.remove_task(1), TaskManager::ERROR_MESSAGE
  end
end
