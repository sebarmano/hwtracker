class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.references :student, index: true
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
