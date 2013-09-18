class SalaryRange < ActiveRecord::Base
  attr_accessible :name, :position
  has_many :jobs
end
