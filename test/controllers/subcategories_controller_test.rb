require 'test_helper'

class SubcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcategory = subcategories(:one)
  end

  test "should get index" do
    get subcategories_url, as: :json
    assert_response :success
  end

  test "should create subcategory" do
    assert_difference('Subcategory.count') do
      post subcategories_url, params: { subcategory: { details: @subcategory.details, name: @subcategory.name, price: @subcategory.price } }, as: :json
    end

    assert_response 201
  end

  test "should show subcategory" do
    get subcategory_url(@subcategory), as: :json
    assert_response :success
  end

  test "should update subcategory" do
    patch subcategory_url(@subcategory), params: { subcategory: { details: @subcategory.details, name: @subcategory.name, price: @subcategory.price } }, as: :json
    assert_response 200
  end

  test "should destroy subcategory" do
    assert_difference('Subcategory.count', -1) do
      delete subcategory_url(@subcategory), as: :json
    end

    assert_response 204
  end
end
