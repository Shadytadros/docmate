require 'test_helper'

class DealTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deal_teams_index_url
    assert_response :success
  end

end
