require "application_system_test_case"

class PatternsTest < ApplicationSystemTestCase
  setup do
    @pattern = patterns(:one)
  end

  test "visiting the index" do
    visit patterns_url
    assert_selector "h1", text: "Patterns"
  end

  test "should create pattern" do
    visit patterns_url
    click_on "New pattern"

    fill_in "Brand", with: @pattern.brand
    fill_in "Image", with: @pattern.image
    fill_in "Number", with: @pattern.number
    fill_in "Stash", with: @pattern.stash
    click_on "Create Pattern"

    assert_text "Pattern was successfully created"
    click_on "Back"
  end

  test "should update Pattern" do
    visit pattern_url(@pattern)
    click_on "Edit this pattern", match: :first

    fill_in "Brand", with: @pattern.brand
    fill_in "Image", with: @pattern.image
    fill_in "Number", with: @pattern.number
    fill_in "Stash", with: @pattern.stash
    click_on "Update Pattern"

    assert_text "Pattern was successfully updated"
    click_on "Back"
  end

  test "should destroy Pattern" do
    visit pattern_url(@pattern)
    click_on "Destroy this pattern", match: :first

    assert_text "Pattern was successfully destroyed"
  end
end
