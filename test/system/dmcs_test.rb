require "application_system_test_case"

class DmcsTest < ApplicationSystemTestCase
  setup do
    @dmc = dmcs(:one)
  end

  test "visiting the index" do
    visit dmcs_url
    assert_selector "h1", text: "Dmcs"
  end

  test "should create dmc" do
    visit dmcs_url
    click_on "New dmc"

    fill_in "Color", with: @dmc.color
    fill_in "Image", with: @dmc.image
    fill_in "Number", with: @dmc.number
    fill_in "Rgb value", with: @dmc.rgb_value
    fill_in "Stash", with: @dmc.stash
    click_on "Create Dmc"

    assert_text "Dmc was successfully created"
    click_on "Back"
  end

  test "should update Dmc" do
    visit dmc_url(@dmc)
    click_on "Edit this dmc", match: :first

    fill_in "Color", with: @dmc.color
    fill_in "Image", with: @dmc.image
    fill_in "Number", with: @dmc.number
    fill_in "Rgb value", with: @dmc.rgb_value
    fill_in "Stash", with: @dmc.stash
    click_on "Update Dmc"

    assert_text "Dmc was successfully updated"
    click_on "Back"
  end

  test "should destroy Dmc" do
    visit dmc_url(@dmc)
    click_on "Destroy this dmc", match: :first

    assert_text "Dmc was successfully destroyed"
  end
end
