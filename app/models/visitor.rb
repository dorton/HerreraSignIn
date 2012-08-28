class Visitor < ActiveRecord::Base
  attr_accessible :name, :reason, :student

  validates :name, :presence => true

end
