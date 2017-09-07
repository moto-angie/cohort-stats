class SystemCheckSubmission
  attr_reader :solution, :student

  def initialize(solution, student)
    @solution = solution
    @student = student
  end

  def solution
    "#{@solution}"
  end
end

class InvalidGradeError < StandardError
end
