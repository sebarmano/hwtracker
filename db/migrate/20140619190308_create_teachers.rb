class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email, :unique => true

      t.timestamps
    end
  end
end
