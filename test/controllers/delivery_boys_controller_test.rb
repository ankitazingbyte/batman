require 'test_helper'

class DeliveryBoysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_boy = delivery_boys(:one)
  end

  test "should get index" do
    get delivery_boys_url, as: :json
    assert_response :success
  end

  test "should create delivery_boy" do
    assert_difference('DeliveryBoy.count') do
      post delivery_boys_url, params: { delivery_boy: { address: @delivery_boy.address, image: @delivery_boy.image, name: @delivery_boy.name, total_delivery: @delivery_boy.total_delivery } }, as: :json
    end

    assert_response 201
  end

  test "should show delivery_boy" do
    get delivery_boy_url(@delivery_boy), as: :json
    assert_response :success
  end

  test "should update delivery_boy" do
    patch delivery_boy_url(@delivery_boy), params: { delivery_boy: { address: @delivery_boy.address, image: @delivery_boy.image, name: @delivery_boy.name, total_delivery: @delivery_boy.total_delivery } }, as: :json
    assert_response 200
  end

  test "should destroy delivery_boy" do
    assert_difference('DeliveryBoy.count', -1) do
      delete delivery_boy_url(@delivery_boy), as: :json
    end

    assert_response 204
  end
end
