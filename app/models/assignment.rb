class Assignment < ActiveRecord::Base
  belongs_to :teacher
  has_and_belongs_to_many :students
  has_many :completed_assigments
end
