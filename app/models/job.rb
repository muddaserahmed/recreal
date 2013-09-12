class Job < ActiveRecord::Base
  attr_accessible :company_id, :currency_id, :department_id, :division_id, :employee_type_id, :industry_id, :job_description, :job_requirements, :last_date, :location, :posted_date, :salary_range, :start_date, :title, :travel_required
  belongs_to :company
  belongs_to :industry
  has_many :job_applications
end
