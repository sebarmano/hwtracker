class AddTeacherToAssignment < ActiveRecord::Migration
  def change
    add_reference :assignments, :teacher, index: true
  end
end
