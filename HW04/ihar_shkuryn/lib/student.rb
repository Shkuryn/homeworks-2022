# frozen_string_literal: true

class Student
  attr_reader :name, :surname
  attr_accessor :notice, :homeworks_todo, :homeworks_in_progress

  def initialize(data)
    @name = data[:name]
    @surname = data[:surname]
    @notice = Notification.new
    @homeworks_todo = []
    @homeworks_in_progress = []
  end

  def notifications
    # any logic here
  end

  def mark_as_read!
    notice.mark_as_read!
  end

  def homeworks
    homeworks_todo.each do |hw|
      # any logic with hw
    end
  end

  def to_work!(homework)
    homeworks_in_progress.push(homework)
    homework.mentor.notice.queue.push("Student: #{name} #{surname} started homework #{homework.title}")
  end

  def add_answer!(homework, answer)
    debugger
    homework.answers.push(answer)
  end

end