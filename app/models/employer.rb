class Employer < ActiveRecord::Base
  attr_accessible :company_name, :website
   has_one :user, :as => :profileable
end
