## Instructions

You have been tasked with creating an Object-Oriented system to keep track of
the happenings at a certain educational institution. Based on a product planning
session, you have determined these are the classes you will need:

* `Student`
* `SystemCheckSubmission`
* `SystemCheck`
* `Cohort`

### Getting Set Up

Run the following commands from your terminal:

```
$ et get cohort-stats
$ cd cohort-stats
$ bundle install
$ rspec spec
```

Let the tests guide your development.

## Meeting Expectations Requirements

Make the following tests pass by adding code to the `lib` folder:

1. `spec/lib/01_student_spec.rb`
2. `spec/lib/02_system_check_submission_spec.rb`
3. `spec/lib/03_system_check_spec.rb`
4. `spec/lib/04_cohort_spec.rb`


### Tips

* Focus on one failing test at a time:
  - Add the line `--fail-fast` to the `.rspec` file if you would like the test suite to stop running on the first failed test.
  - Or, to run one spec file at a time, type in `rspec` followed by the path to the test file (e.g. - `rspec spec/lib/01_student_spec.rb`).
* Complete the tests in the order listed above.
* RSpec will tell you exactly what to do. Use the following workflow:
  - Run the test suite.
  - Read the error message.
  - If you're confused by the error check the actual test file to see how it's set up.
  - Do the simplest implementation, without "hard coding" values, that corrects the error.
  - Repeat.
* Once the test suite is passing, disregarding pending tests, please submit your code by running `et submit`.
* **DO NOT** start the requirements for exceeding expectations before you have completed the requirements necessary for meeting expectations.

## Exceeding Expectations Requirements

* Make the following tests pass by adding code to the `lib` folder:
    1. `spec/lib/05_exceeds_expectations_system_check_submission_spec.rb`
    2. `spec/lib/06_exceeds_expectations_system_check_spec.rb`
    3. `spec/lib/07_exceeds_expectations_cohort_spec.rb`
* Note, these tests are currently being skipped by rspec. To start this section, change all of the `xdescribe` keywords to `describe` within the above files.
* These need to pass with implementation that does not have "hard coded data". Once these tests pass, you should get `0 failures` and no pending tests when you run `rspec`.

In addition, write a `Lesson` class, then write the following classes that will inherit from the `Lesson` class: `Article`, `Challenge`, and `Video`. Update the `System Check` class to also inherit from the `Lesson` class.

* The `Lesson` class should have `name` and `body` instance variables, which should be both readable and writeable.
* The `Lesson` class should have a `#submittable?` method that returns `false`.
* `Challenge` and `SystemCheck` classes are submittable. Ensure that calling `#submittable?` on these objects returns `true`.
* A `SystemCheck` should have an average grade.
* A `Video` class has a `url` instance variable that is readable, but not writeable.
* Write RSpec tests for these functionalities.

__Note__: Make sure to refactor the `SystemCheck` class and RSpec test so that `Lesson` objects have the appropriate functionality.
