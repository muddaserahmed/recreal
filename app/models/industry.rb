class Industry < ActiveRecord::Base
  attr_accessible :group, :linkedin_code, :name
  has_many :jobs
end
