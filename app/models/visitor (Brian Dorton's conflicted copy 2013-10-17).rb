class Visitor < ActiveRecord::Base
  attr_accessible :name, :reason, :student, :created_at, :updated_at

  validates :name, :presence => true

end
