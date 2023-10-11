# frozen_string_literal: true

class TaskQueue
  def initialize
    @queue = Queue.new
  end

  def enqueue(task)
    @queue.push(task)
  end

  def dequeue
    @queue.pop
  end

  def process_tasks(&block)
    threads = []
    5.times do
      threads << Thread.new do
        until @queue.empty?
          task = dequeue
          block.call(task)
        end
      end
    end

    # Uncomment this line to wait for all threads to finish and see puts
    # threads.each(&:join)
  end
end
