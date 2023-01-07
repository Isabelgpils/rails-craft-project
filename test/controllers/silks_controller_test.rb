require "test_helper"

class SilksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @silk = silks(:one)
  end

  test "should get index" do
    get silks_url
    assert_response :success
  end

  test "should get new" do
    get new_silk_url
    assert_response :success
  end

  test "should create silk" do
    assert_difference("Silk.count") do
      post silks_url, params: { silk: { brand: @silk.brand, color: @silk.color, image: @silk.image, number: @silk.number, pattern: @silk.pattern, stash: @silk.stash, type: @silk.type } }
    end

    assert_redirected_to silk_url(Silk.last)
  end

  test "should show silk" do
    get silk_url(@silk)
    assert_response :success
  end

  test "should get edit" do
    get edit_silk_url(@silk)
    assert_response :success
  end

  test "should update silk" do
    patch silk_url(@silk), params: { silk: { brand: @silk.brand, color: @silk.color, image: @silk.image, number: @silk.number, pattern: @silk.pattern, stash: @silk.stash, type: @silk.type } }
    assert_redirected_to silk_url(@silk)
  end

  test "should destroy silk" do
    assert_difference("Silk.count", -1) do
      delete silk_url(@silk)
    end

    assert_redirected_to silks_url
  end
end
