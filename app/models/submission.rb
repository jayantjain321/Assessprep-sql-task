class Submission < ApplicationRecord
  belongs_to :student
  belongs_to :assignment

  validates :submission_date, presence: true
  validates :marks_obtained, numericality: { only_integer: true, allow_nil: true }

  #A student can submit assignment only for once not multiple times 
  validates :student_id, uniqueness: { scope: :assignment_id, message: "has already submitted this assignment" }
end
