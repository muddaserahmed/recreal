class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    case current_user.profileable_type
    when "Employer"
        return candidates_path
    when "Candidate"
        return linkedin_index_path
    end
  end

end
