require 'test_helper'

class TopicPopularityControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get topic_popularity_search_url
    assert_response :success
  end

  test "should get list" do
    get topic_popularity_list_url
    assert_response :success
  end

  test "should get map" do
    get topic_popularity_map_url
    assert_response :success
  end

end
