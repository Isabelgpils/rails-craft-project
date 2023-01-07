require "test_helper"

class DmcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dmc = dmcs(:one)
  end

  test "should get index" do
    get dmcs_url
    assert_response :success
  end

  test "should get new" do
    get new_dmc_url
    assert_response :success
  end

  test "should create dmc" do
    assert_difference("Dmc.count") do
      post dmcs_url, params: { dmc: { color: @dmc.color, image: @dmc.image, number: @dmc.number, rgb_value: @dmc.rgb_value, stash: @dmc.stash } }
    end

    assert_redirected_to dmc_url(Dmc.last)
  end

  test "should show dmc" do
    get dmc_url(@dmc)
    assert_response :success
  end

  test "should get edit" do
    get edit_dmc_url(@dmc)
    assert_response :success
  end

  test "should update dmc" do
    patch dmc_url(@dmc), params: { dmc: { color: @dmc.color, image: @dmc.image, number: @dmc.number, rgb_value: @dmc.rgb_value, stash: @dmc.stash } }
    assert_redirected_to dmc_url(@dmc)
  end

  test "should destroy dmc" do
    assert_difference("Dmc.count", -1) do
      delete dmc_url(@dmc)
    end

    assert_redirected_to dmcs_url
  end
end
