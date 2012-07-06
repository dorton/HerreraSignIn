class CreateHisdEmployees < ActiveRecord::Migration
  def change
    create_table :hisd_employees do |t|
      t.string :name
      t.string :employee_id
      t.text :reason

      t.timestamps
    end
  end
end
