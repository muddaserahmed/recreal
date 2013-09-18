class Skill < ActiveRecord::Base
  attr_accessible :name, :rating, :job_id
  belongs_to :job
end
