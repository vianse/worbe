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
      post :create, job: { area_id: @job.area_id, availability_travel: @job.availability_travel, business_id: @job.business_id, change_home: @job.change_home, city_id: @job.city_id, country_id: @job.country_id, date_recruitment: @job.date_recruitment, day_type: @job.day_type, description: @job.description, disability: @job.disability, language: @job.language, maximum_age: @job.maximum_age, minimum_age: @job.minimum_age, name: @job.name, number_jobs: @job.number_jobs, ofimatica: @job.ofimatica, percentage_language: @job.percentage_language, salary: @job.salary, state_id: @job.state_id, tag_id: @job.tag_id, type_contract: @job.type_contract, user_id: @job.user_id, year_experience: @job.year_experience }
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
    patch :update, id: @job, job: { area_id: @job.area_id, availability_travel: @job.availability_travel, business_id: @job.business_id, change_home: @job.change_home, city_id: @job.city_id, country_id: @job.country_id, date_recruitment: @job.date_recruitment, day_type: @job.day_type, description: @job.description, disability: @job.disability, language: @job.language, maximum_age: @job.maximum_age, minimum_age: @job.minimum_age, name: @job.name, number_jobs: @job.number_jobs, ofimatica: @job.ofimatica, percentage_language: @job.percentage_language, salary: @job.salary, state_id: @job.state_id, tag_id: @job.tag_id, type_contract: @job.type_contract, user_id: @job.user_id, year_experience: @job.year_experience }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
