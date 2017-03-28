require 'test_helper'

class DraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draft = drafts(:one)
  end

  test "should get index" do
    get drafts_url
    assert_response :success
  end

  test "should get new" do
    get new_draft_url
    assert_response :success
  end

  test "should create draft" do
    assert_difference('Draft.count') do
      post drafts_url, params: { draft: { accepted: @draft.accepted, rejected: @draft.rejected, venue_address: @draft.venue_address, venue_name: @draft.venue_name, venue_ownername: @draft.venue_ownername } }
    end

    assert_redirected_to draft_url(Draft.last)
  end

  test "should show draft" do
    get draft_url(@draft)
    assert_response :success
  end

  test "should get edit" do
    get edit_draft_url(@draft)
    assert_response :success
  end

  test "should update draft" do
    patch draft_url(@draft), params: { draft: { accepted: @draft.accepted, rejected: @draft.rejected, venue_address: @draft.venue_address, venue_name: @draft.venue_name, venue_ownername: @draft.venue_ownername } }
    assert_redirected_to draft_url(@draft)
  end

  test "should destroy draft" do
    assert_difference('Draft.count', -1) do
      delete draft_url(@draft)
    end

    assert_redirected_to drafts_url
  end
end
