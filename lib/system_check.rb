class SystemCheck
  attr_reader :submissions

  def initialize(name, due_date)
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end
end
