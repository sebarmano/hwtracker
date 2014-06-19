class Assignment < ActiveRecord::Base
  validates :title, :description, :date, :due, presence: true
  # validates :date, numericality: {less_than_or_equal_to: :due}

  belongs_to :teacher
  has_and_belongs_to_many :students
  has_many :completed_assigments
end
