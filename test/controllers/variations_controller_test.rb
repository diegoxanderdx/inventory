require "test_helper"

class VariationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @variation = variations(:one)
  end

  test "should get index" do
    get variations_url
    assert_response :success
  end

  test "should get new" do
    get new_variation_url
    assert_response :success
  end

  test "should create variation" do
    assert_difference("Variation.count") do
      post variations_url, params: { variation: { color: @variation.color, material_id: @variation.material_id, price: @variation.price, remaining_qtty: @variation.remaining_qtty, size: @variation.size, total_qtty: @variation.total_qtty, unit_of_measurement: @variation.unit_of_measurement } }
    end

    assert_redirected_to variation_url(Variation.last)
  end

  test "should show variation" do
    get variation_url(@variation)
    assert_response :success
  end

  test "should get edit" do
    get edit_variation_url(@variation)
    assert_response :success
  end

  test "should update variation" do
    patch variation_url(@variation), params: { variation: { color: @variation.color, material_id: @variation.material_id, price: @variation.price, remaining_qtty: @variation.remaining_qtty, size: @variation.size, total_qtty: @variation.total_qtty, unit_of_measurement: @variation.unit_of_measurement } }
    assert_redirected_to variation_url(@variation)
  end

  test "should destroy variation" do
    assert_difference("Variation.count", -1) do
      delete variation_url(@variation)
    end

    assert_redirected_to variations_url
  end
end
