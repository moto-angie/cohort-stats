class SystemCheckSubmission
  attr_reader :solution, :student, :grade

  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = nil
  end

  # def solution
  #   "#{@solution}"
  # end

  def assign_grade(grade)
    if grade < 0
      raise InvalidGradeError
    elsif grade > 100
      raise InvalidGradeError
    else
      @grade = grade
    end
  end

  def graded?
    if @grade == nil
      false
    else
      true
    end
  end
end

class InvalidGradeError < StandardError
end
