class Teacher < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_many :students
  has_many :assignments
end
