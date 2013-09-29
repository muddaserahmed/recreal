class Skill < ActiveRecord::Base
  attr_accessible :name, :rating, :job_id, :_destroy
  # NOT PERSISTENT
attr_accessor :_destroy

  belongs_to :job
end
