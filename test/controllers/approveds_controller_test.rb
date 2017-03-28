require 'test_helper'

class ApprovedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approved = approveds(:one)
  end

  test "should get index" do
    get approveds_url
    assert_response :success
  end

  test "should get new" do
    get new_approved_url
    assert_response :success
  end

  test "should create approved" do
    assert_difference('Approved.count') do
      post approveds_url, params: { approved: { approved_at: @approved.approved_at, approved_by: @approved.approved_by, venue_address: @approved.venue_address, venue_name: @approved.venue_name, venue_ownername: @approved.venue_ownername } }
    end

    assert_redirected_to approved_url(Approved.last)
  end

  test "should show approved" do
    get approved_url(@approved)
    assert_response :success
  end

  test "should get edit" do
    get edit_approved_url(@approved)
    assert_response :success
  end

  test "should update approved" do
    patch approved_url(@approved), params: { approved: { approved_at: @approved.approved_at, approved_by: @approved.approved_by, venue_address: @approved.venue_address, venue_name: @approved.venue_name, venue_ownername: @approved.venue_ownername } }
    assert_redirected_to approved_url(@approved)
  end

  test "should destroy approved" do
    assert_difference('Approved.count', -1) do
      delete approved_url(@approved)
    end

    assert_redirected_to approveds_url
  end
end
