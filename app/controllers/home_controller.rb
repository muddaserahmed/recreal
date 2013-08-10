class HomeController < ApplicationController
	before_filter :authenticate_user!
  def index

    case current_user.profileable_type
    when "Employer"
        redirect_to candidates_path
    when "Candidate"
        redirect_to linkedin_index_path
    end

  end
end
