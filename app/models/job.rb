class Job < ActiveRecord::Base
  attr_accessible :company_id, :currency_id, :dept_id, :division_id, :emp_type_id, :industry_id, :job_description, :job_requirements, :last_date, :location, :posted_date, :salary_range_id, :start_date, :title, :travel_required, :skills_attributes
  belongs_to :company
  belongs_to :industry
  has_many :job_applications
  has_many :skills, :dependent => :destroy



  belongs_to :division
  belongs_to :dept
  belongs_to :salary_range
  belongs_to :emp_type



  validates_associated  :emp_type , :division , :industry
  validates_presence_of :emp_type , :division , :industry


  accepts_nested_attributes_for :skills, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true 

end
