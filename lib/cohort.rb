class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def career_kickoff
    @end_date + 4
  end

  def enroll(student)
    unless @students.include?(student)
      @students << student
    end
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster_string = "Cohort Title: #{@title}\n"
    @students.each do |student|
      roster_string += "Name: #{student.name}; Email: #{student.email}\n"
    end
    roster_string
  end

  def system_check_completed?(system_check)
    completed = false
    total_submissions = 0

    @students.each do |student|
      if system_check.submissions.any? { |submission| submission.student == student }
        total_submissions += 1
      end
    end

    if total_submissions == @students.size
      completed = true
    end
    completed
  end
end
