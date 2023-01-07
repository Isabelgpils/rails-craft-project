require "application_system_test_case"

class SilksTest < ApplicationSystemTestCase
  setup do
    @silk = silks(:one)
  end

  test "visiting the index" do
    visit silks_url
    assert_selector "h1", text: "Silks"
  end

  test "should create silk" do
    visit silks_url
    click_on "New silk"

    fill_in "Brand", with: @silk.brand
    fill_in "Color", with: @silk.color
    fill_in "Image", with: @silk.image
    fill_in "Number", with: @silk.number
    fill_in "Pattern", with: @silk.pattern
    fill_in "Stash", with: @silk.stash
    fill_in "Type", with: @silk.type
    click_on "Create Silk"

    assert_text "Silk was successfully created"
    click_on "Back"
  end

  test "should update Silk" do
    visit silk_url(@silk)
    click_on "Edit this silk", match: :first

    fill_in "Brand", with: @silk.brand
    fill_in "Color", with: @silk.color
    fill_in "Image", with: @silk.image
    fill_in "Number", with: @silk.number
    fill_in "Pattern", with: @silk.pattern
    fill_in "Stash", with: @silk.stash
    fill_in "Type", with: @silk.type
    click_on "Update Silk"

    assert_text "Silk was successfully updated"
    click_on "Back"
  end

  test "should destroy Silk" do
    visit silk_url(@silk)
    click_on "Destroy this silk", match: :first

    assert_text "Silk was successfully destroyed"
  end
end
