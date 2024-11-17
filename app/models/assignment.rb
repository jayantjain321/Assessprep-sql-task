class Assignment < ApplicationRecord
    has_many :submissions
    has_many :students, through: :submissions
  
    validates :title, presence: true
    validates :due_date, presence: true
    validates :total_marks, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
