class AddSignOutToHisdEmployees < ActiveRecord::Migration
  def change
    add_column :hisd_employees, :sign_out, :datetime
  end
end
