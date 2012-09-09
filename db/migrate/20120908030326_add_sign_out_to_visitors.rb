class AddSignOutToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :sign_out, :datetime
  end
end
