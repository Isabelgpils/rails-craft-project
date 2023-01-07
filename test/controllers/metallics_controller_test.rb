require "test_helper"

class MetallicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metallic = metallics(:one)
  end

  test "should get index" do
    get metallics_url
    assert_response :success
  end

  test "should get new" do
    get new_metallic_url
    assert_response :success
  end

  test "should create metallic" do
    assert_difference("Metallic.count") do
      post metallics_url, params: { metallic: { brand: @metallic.brand, color: @metallic.color, image: @metallic.image, number: @metallic.number, pattern: @metallic.pattern, stash: @metallic.stash, type: @metallic.type } }
    end

    assert_redirected_to metallic_url(Metallic.last)
  end

  test "should show metallic" do
    get metallic_url(@metallic)
    assert_response :success
  end

  test "should get edit" do
    get edit_metallic_url(@metallic)
    assert_response :success
  end

  test "should update metallic" do
    patch metallic_url(@metallic), params: { metallic: { brand: @metallic.brand, color: @metallic.color, image: @metallic.image, number: @metallic.number, pattern: @metallic.pattern, stash: @metallic.stash, type: @metallic.type } }
    assert_redirected_to metallic_url(@metallic)
  end

  test "should destroy metallic" do
    assert_difference("Metallic.count", -1) do
      delete metallic_url(@metallic)
    end

    assert_redirected_to metallics_url
  end
end
