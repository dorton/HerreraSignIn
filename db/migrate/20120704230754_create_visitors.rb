class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :student
      t.text :reason

      t.timestamps
    end
  end
end
