class HomeController < ApplicationController

	before_filter :authenticate_user!
  def index

    # case current_user.profileable_type
    # when "Employer"
    #     @company = Company.find(current_user.profileable.company.id)
	  	# 	redirect_to @company
    # when "Candidate"
    #     redirect_to linkedin_index_path
    # end





  end

  def test

  end

  def test_again
  end
end
