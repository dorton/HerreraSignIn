class StudentCheckOut < ActiveRecord::Base
  attr_accessible :grade, :parent, :student, :teacher
end
