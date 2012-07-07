class ChangeDataTypeForVisitorReason < ActiveRecord::Migration
  def self.up
    change_table :visitors do |t|
      t.change :reason, :text
    end
  end

  def self.down
    change_table :visitors do |t|
      t.change :reason, :string
    end
  end
end
