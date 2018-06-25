#!/usr/bin/env ruby

require 'thread'
require 'pp'

class ThreadPool

  def initialize(size)
    @work_q = Queue.new
    @size = size
  end

  def queue(element)
    @work_q.push element
  end

  def run
    workers = (0...@size).map do
      Thread.new do
        begin
          while x = @work_q.pop(true)
            yield(x)
          end
        rescue ThreadError
        end
      end
    end; "ok"
    workers.map(&:join); "ok"
  end
end

THREAD_POOL_SIZE = 4

works = [
  {:name => 'work1'},
  {:name => 'work2'},
  {:name => 'work3'},
  {:name => 'work4'},
  {:name => 'work5'},
  {:name => 'work6'},
  {:name => 'work7'},
  {:name => 'work8'},
  {:name => 'work9'},
  {:name => 'work11'},
]

tp = ThreadPool.new(THREAD_POOL_SIZE)

works.each do |work|
  tp.queue(work)
end

tp.run do |work|
  puts "Process: #{work[:name]}: BEGIN"
  sleep 2
  puts "Process: #{work[:name]}: END"
end


