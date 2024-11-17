class Student < ApplicationRecord
  has_many :submissions
  has_many :assignments, through: :submissions

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true,  format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :date_of_birth, presence: true
  validates :gender, inclusion: { in: %w[M F], message: "%{value} is not a valid gender" }
end
