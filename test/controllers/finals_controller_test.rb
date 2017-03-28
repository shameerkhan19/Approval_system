require 'test_helper'

class FinalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @final = finals(:one)
  end

  test "should get index" do
    get finals_url
    assert_response :success
  end

  test "should get new" do
    get new_final_url
    assert_response :success
  end

  test "should create final" do
    assert_difference('Final.count') do
      post finals_url, params: { final: { approved_at: @final.approved_at, approved_by: @final.approved_by, venue_address: @final.venue_address, venue_name: @final.venue_name, venue_ownername: @final.venue_ownername } }
    end

    assert_redirected_to final_url(Final.last)
  end

  test "should show final" do
    get final_url(@final)
    assert_response :success
  end

  test "should get edit" do
    get edit_final_url(@final)
    assert_response :success
  end

  test "should update final" do
    patch final_url(@final), params: { final: { approved_at: @final.approved_at, approved_by: @final.approved_by, venue_address: @final.venue_address, venue_name: @final.venue_name, venue_ownername: @final.venue_ownername } }
    assert_redirected_to final_url(@final)
  end

  test "should destroy final" do
    assert_difference('Final.count', -1) do
      delete final_url(@final)
    end

    assert_redirected_to finals_url
  end
end
