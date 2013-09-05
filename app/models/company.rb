class Company < ActiveRecord::Base
  attr_accessible :name, :website, :employers, :jobs
  has_many :employers
  has_many :jobs
  accepts_nested_attributes_for :employers
end
