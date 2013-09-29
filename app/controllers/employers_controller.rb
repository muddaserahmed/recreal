class EmployersController < ApplicationController
  # GET /employers
  # GET /employers.json
  def index
    @employers = Employer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employers }
    end
  end

  # GET /employers/1
  # GET /employers/1.json
  def show
    @employer = Employer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employer }
    end
  end

  # GET /employers/new
  # GET /employers/new.json
  def new
    @employer = Employer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employer }
    end
  end

  # GET /employers/1/edit
  def edit
    @employer = Employer.find(params[:id])
  end

  # POST /employers
  # POST /employers.json
  def create
 @employer = Employer.new(params[:employer])
    @user = User.new(params[:user])
    # @company = Company.new(params[:company])
    # @employer.company = @company

    @user.profileable = @employer


      if @employer.save
        if  @user.save
            sign_in(:user, @user)
            redirect_to root_path
        end
      end
  end

  # PUT /employers/1
  # PUT /employers/1.json
  def update
    @employer = Employer.find(params[:id])

    respond_to do |format|
      if @employer.update_attributes(params[:employer])
        format.html { redirect_to @employer, notice: 'Employer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employers/1
  # DELETE /employers/1.json
  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy

    respond_to do |format|
      format.html { redirect_to employers_url }
      format.json { head :no_content }
    end
  end
end
