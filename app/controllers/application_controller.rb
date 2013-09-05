class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    case current_user.profileable_type
	    when "Employer"
	      @company = Company.find(current_user.profileable.company.id)

	    #   respond_to do |format|
	    #   format.html # show.html.erb
	    #   format.json { render json: @company }

	  		# redirect_to :controller => 'companies', :action => 'show',:id => 7

	  		return @company


	  		# return candidates_path


	   
	    when "Candidate"
	        return linkedin_index_path
	    end

  end

end
