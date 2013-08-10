class LinkedinOauthSetting < ActiveRecord::Base
  attr_accessible :asecret, :atoken, :candidate_id

  belongs_to :candidate
end
