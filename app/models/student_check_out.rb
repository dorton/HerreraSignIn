class StudentCheckOut < ActiveRecord::Base
  attr_accessible :grade, :parent, :student, :teacher

  validates :parent,:student, :presence => true
end
