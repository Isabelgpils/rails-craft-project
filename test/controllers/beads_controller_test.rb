require "test_helper"

class BeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bead = beads(:one)
  end

  test "should get index" do
    get beads_url
    assert_response :success
  end

  test "should get new" do
    get new_bead_url
    assert_response :success
  end

  test "should create bead" do
    assert_difference("Bead.count") do
      post beads_url, params: { bead: { color: @bead.color, image: @bead.image, number: @bead.number, pattern: @bead.pattern, stash: @bead.stash } }
    end

    assert_redirected_to bead_url(Bead.last)
  end

  test "should show bead" do
    get bead_url(@bead)
    assert_response :success
  end

  test "should get edit" do
    get edit_bead_url(@bead)
    assert_response :success
  end

  test "should update bead" do
    patch bead_url(@bead), params: { bead: { color: @bead.color, image: @bead.image, number: @bead.number, pattern: @bead.pattern, stash: @bead.stash } }
    assert_redirected_to bead_url(@bead)
  end

  test "should destroy bead" do
    assert_difference("Bead.count", -1) do
      delete bead_url(@bead)
    end

    assert_redirected_to beads_url
  end
end
