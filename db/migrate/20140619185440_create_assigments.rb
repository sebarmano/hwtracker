class CreateAssigments < ActiveRecord::Migration
  def change
    create_table :assigments do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.datetime :due

      t.timestamps
    end
  end
end
