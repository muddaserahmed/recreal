class JobApplicationsController < ApplicationController

	def create

		@job_application = current_user.profileable.job_applications.build(:job_id => params[:job_id])
		if @job_application.save
			flash[:notice] = "Applied for the job"
			redirect_to root_url
		else
		flash[:error] = "Unable to add job."
    	redirect_to jobs_path
  		end

    # @company = Company.new(params[:company])
    # @user = User.new(params[:user])
    # @employer = Employer.new
    # @user.profileable = @employer
    # @employer.company = @company
    #   if @company.save
    #     if  @user.save
    #         @employer.save
    #         # redirect_to candidates_url

    #     end
    #   end
  end

    def destroy
	  @job_application = current_user.candidate.job_applications.find(params[:id])
	  @job_application.destroy
	  flash[:notice] = "Removed job application."
	  redirect_to jobs_path
    # @company = Company.find(params[:id])
    # @company.destroy

    # respond_to do |format|
    #   format.html { redirect_to companies_url }
    #   format.json { head :no_content }
    # end
  end

end
