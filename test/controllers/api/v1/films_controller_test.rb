require 'test_helper'

class Api::V1::FilmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_films_index_url
    assert_response :success
  end

end
