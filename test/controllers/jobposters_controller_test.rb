require "test_helper"

class JobpostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobposter = jobposters(:one)
  end

  test "should get index" do
    get jobposters_url
    assert_response :success
  end

  test "should get new" do
    get new_jobposter_url
    assert_response :success
  end

  test "should create jobposter" do
    assert_difference('Jobposter.count') do
      post jobposters_url, params: { jobposter: { email: @jobposter.email, first_name: @jobposter.first_name, job_nature: @jobposter.job_nature, last_name: @jobposter.last_name, phone: @jobposter.phone } }
    end

    assert_redirected_to jobposter_url(Jobposter.last)
  end

  test "should show jobposter" do
    get jobposter_url(@jobposter)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobposter_url(@jobposter)
    assert_response :success
  end

  test "should update jobposter" do
    patch jobposter_url(@jobposter), params: { jobposter: { email: @jobposter.email, first_name: @jobposter.first_name, job_nature: @jobposter.job_nature, last_name: @jobposter.last_name, phone: @jobposter.phone } }
    assert_redirected_to jobposter_url(@jobposter)
  end

  test "should destroy jobposter" do
    assert_difference('Jobposter.count', -1) do
      delete jobposter_url(@jobposter)
    end

    assert_redirected_to jobposters_url
  end
end
