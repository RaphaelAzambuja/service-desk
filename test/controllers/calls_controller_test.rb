require "test_helper"

class CallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call = calls(:one)
  end

  test "should get index" do
    get calls_url, as: :json
    assert_response :success
  end

  test "should create call" do
    assert_difference("Call.count") do
      post calls_url, params: { call: { assigned_user_id: @call.assigned_user_id, call_type: @call.call_type, conclusion_description: @call.conclusion_description, contact_number: @call.contact_number, description: @call.description, opened_by_user_id: @call.opened_by_user_id, priority: @call.priority, rating: @call.rating, rating_description: @call.rating_description, service_level: @call.service_level, status: @call.status } }, as: :json
    end

    assert_response :created
  end

  test "should show call" do
    get call_url(@call), as: :json
    assert_response :success
  end

  test "should update call" do
    patch call_url(@call), params: { call: { assigned_user_id: @call.assigned_user_id, call_type: @call.call_type, conclusion_description: @call.conclusion_description, contact_number: @call.contact_number, description: @call.description, opened_by_user_id: @call.opened_by_user_id, priority: @call.priority, rating: @call.rating, rating_description: @call.rating_description, service_level: @call.service_level, status: @call.status } }, as: :json
    assert_response :success
  end

  test "should destroy call" do
    assert_difference("Call.count", -1) do
      delete call_url(@call), as: :json
    end

    assert_response :no_content
  end
end
