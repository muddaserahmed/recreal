require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { company_id: @job.company_id, currency_id: @job.currency_id, department_id: @job.department_id, division_id: @job.division_id, employee_type_id: @job.employee_type_id, industry_id: @job.industry_id, job_description: @job.job_description, job_requirements: @job.job_requirements, last_date: @job.last_date, location: @job.location, posted_date: @job.posted_date, salary_range: @job.salary_range, start_date: @job.start_date, title: @job.title, travel_required: @job.travel_required }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { company_id: @job.company_id, currency_id: @job.currency_id, department_id: @job.department_id, division_id: @job.division_id, employee_type_id: @job.employee_type_id, industry_id: @job.industry_id, job_description: @job.job_description, job_requirements: @job.job_requirements, last_date: @job.last_date, location: @job.location, posted_date: @job.posted_date, salary_range: @job.salary_range, start_date: @job.start_date, title: @job.title, travel_required: @job.travel_required }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
