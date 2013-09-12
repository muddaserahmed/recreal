class Candidate < ActiveRecord::Base
  attr_accessible :available_in, :contact_no, :name, :salary_expectation, :skype_name
  has_one :user, :as => :profileable

  ## linkedin Structure
  has_one :basic_profile
  has_one :full_profile
  has_one :linkedin_oauth_setting
  has_many :job_applications
end
