require 'test_helper'

class WorkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working = workings(:one)
  end

  test "should get index" do
    get workings_url
    assert_response :success
  end

  test "should get new" do
    get new_working_url
    assert_response :success
  end

  test "should create working" do
    assert_difference('Working.count') do
      post workings_url, params: { working: { email: @working.email, name: @working.name, repair_id: @working.repair_id } }
    end

    assert_redirected_to working_url(Working.last)
  end

  test "should show working" do
    get working_url(@working)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_url(@working)
    assert_response :success
  end

  test "should update working" do
    patch working_url(@working), params: { working: { email: @working.email, name: @working.name, repair_id: @working.repair_id } }
    assert_redirected_to working_url(@working)
  end

  test "should destroy working" do
    assert_difference('Working.count', -1) do
      delete working_url(@working)
    end

    assert_redirected_to workings_url
  end
end
