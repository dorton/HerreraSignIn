class Visitor < ActiveRecord::Base
  attr_accessible :name, :reason, :student

  validates :name,:student, :presence => true

end
