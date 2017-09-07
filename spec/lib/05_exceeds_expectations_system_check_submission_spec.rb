require "spec_helper"

describe SystemCheckSubmission do
  let(:submission) do
    student = Student.new("Josiah Bartlett", "josiah.bartlett@gmail.com")
    SystemCheckSubmission.new("awesome solution", student)
  end

  xdescribe "#assign_grade" do
    it "sets the grade for an submission" do
      grade = Grade::MEETS_EXPECTATIONS
      submission.assign_grade(grade)
      expect(submission.grade).to eq(grade)
    end

    it "raises an error if the grade is invalid" do
      expect { submission.assign_grade(-5000) }.to raise_error(InvalidGradeError)
    end
  end

  xdescribe "#graded?" do
    it "returns 'false' if the submission has not been graded" do
      expect(submission.graded?).to eq(false)
    end

    it "returns 'true' if the submission has been graded" do
      submission.assign_grade(Grade::MEETS_EXPECTATIONS)
      expect(submission.graded?).to eq(true)
    end
  end
end
