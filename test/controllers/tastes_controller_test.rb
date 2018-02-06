require 'test_helper'

class TastesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taste = tastes(:one)
  end

  test "should get index" do
    get tastes_url, as: :json
    assert_response :success
  end

  test "should create taste" do
    assert_difference('Taste.count') do
      post tastes_url, params: { taste: { name: @taste.name } }, as: :json
    end

    assert_response 201
  end

  test "should show taste" do
    get taste_url(@taste), as: :json
    assert_response :success
  end

  test "should update taste" do
    patch taste_url(@taste), params: { taste: { name: @taste.name } }, as: :json
    assert_response 200
  end

  test "should destroy taste" do
    assert_difference('Taste.count', -1) do
      delete taste_url(@taste), as: :json
    end

    assert_response 204
  end
end
