class Employer < ActiveRecord::Base
  attr_accessible :company_id
   has_one :user, :as => :profileable
   belongs_to :company
   
end
