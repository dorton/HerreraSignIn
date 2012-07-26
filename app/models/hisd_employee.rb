class HisdEmployee < ActiveRecord::Base
  attr_accessible :employee_id, :name, :reason

  validates :name,:employee_id, :presence => true

end
