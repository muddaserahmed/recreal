class JobApplication < ActiveRecord::Base
   attr_accessible :candidate_id,:job_id,:score,:interested_employer,:taken_exam
   belongs_to :candidate
   belongs_to :job




end
