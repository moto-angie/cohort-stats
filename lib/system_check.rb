class SystemCheck
  attr_reader :submissions, :name

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    average = 0
    @submissions.each do |submission|
      average += submission.grade
    end
    average = (average.to_f / @submissions.count)
  end

  def did_student_complete_system_check?(student)
    completed = false
    @submissions.each do |submission|
      if submission.student == student
        completed = true
        break
      end
    end
    completed
  end
end
