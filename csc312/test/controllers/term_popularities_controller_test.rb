require 'test_helper'

class TermPopularitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @term_popularity = term_popularities(:one)
  end

  test "should get index" do
    get term_popularities_url
    assert_response :success
  end

  test "should get new" do
    get new_term_popularity_url
    assert_response :success
  end

  test "should create term_popularity" do
    assert_difference('TermPopularity.count') do
      post term_popularities_url, params: { term_popularity: {  } }
    end

    assert_redirected_to term_popularity_url(TermPopularity.last)
  end

  test "should show term_popularity" do
    get term_popularity_url(@term_popularity)
    assert_response :success
  end

  test "should get edit" do
    get edit_term_popularity_url(@term_popularity)
    assert_response :success
  end

  test "should update term_popularity" do
    patch term_popularity_url(@term_popularity), params: { term_popularity: {  } }
    assert_redirected_to term_popularity_url(@term_popularity)
  end

  test "should destroy term_popularity" do
    assert_difference('TermPopularity.count', -1) do
      delete term_popularity_url(@term_popularity)
    end

    assert_redirected_to term_popularities_url
  end
end
