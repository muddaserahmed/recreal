class FullProfile < ActiveRecord::Base
  attr_accessible :associations, :honors, :interests, :candidate_id

  belongs_to :candidate

  has_many :educations
  has_many :positions
end
