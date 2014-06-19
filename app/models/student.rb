class Student < ActiveRecord::Base
  validates :name, :email, :teacher_id, presence: true
  validates :email, uniqueness: true

  belongs_to :teacher
  has_and_belongs_to_many :assignments
  has_many :completed_assignments
end
