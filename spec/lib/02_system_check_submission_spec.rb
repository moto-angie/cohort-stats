require "spec_helper"

describe SystemCheckSubmission do
  describe ".new" do
    it "takes a solution and student as arguments" do
      solution = <<-SOLUTION
        require "sinatra"

        get "/todo" do
          todo = ["learn ruby", "become great"]
          erb :index, locals: { todo: todo }
        end
      SOLUTION
      student = Student.new("Donna Moss", "donna.moss@gmail.com")
      submission = SystemCheckSubmission.new(solution, student)
      expect(submission).to be_a(SystemCheckSubmission)
    end
  end

  let(:submission) do
    student = Student.new("Donna Moss", "donna.moss@gmail.com")
    SystemCheckSubmission.new("awesome solution", student)
  end

  describe "#solution" do
    it "is a string" do
      expect(submission.solution).to be_a(String)
    end

    it "has a reader for solution" do
      expect(submission.solution).to eq("awesome solution")
    end

    it "does not hard-code the solution" do
      student = Student.new("Charlie Young", "charlie.young@gmail.com")
      other_submission = SystemCheckSubmission.new("require 'yaml'", student)
      expect(other_submission.solution).to eq("require 'yaml'")
    end

    it "does not have a writer for solution" do
      expect { submission.solution = "nil" }.to raise_error(NoMethodError)
    end
  end

  describe "#student" do
    it "has a reader for student" do
      expect(submission.student).to be_a(Student)
    end

    it "does not have a writer for student" do
      expect { submission.student = nil }.to raise_error(NoMethodError)
    end
  end
end
