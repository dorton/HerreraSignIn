class CreateStudentCheckOuts < ActiveRecord::Migration
  def change
    create_table :student_check_outs do |t|
      t.string :parent
      t.string :student
      t.string :grade
      t.string :teacher

      t.timestamps
    end
  end
end
