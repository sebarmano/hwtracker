class Student < ActiveRecord::Base
  belongs_to :teacher
  has_and_belong_to_many :assignments
end
