require 'test_helper'

class EntityTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get entity_teams_show_url
    assert_response :success
  end

  test "should get update" do
    get entity_teams_update_url
    assert_response :success
  end

end
