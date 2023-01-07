require "application_system_test_case"

class BeadsTest < ApplicationSystemTestCase
  setup do
    @bead = beads(:one)
  end

  test "visiting the index" do
    visit beads_url
    assert_selector "h1", text: "Beads"
  end

  test "should create bead" do
    visit beads_url
    click_on "New bead"

    fill_in "Color", with: @bead.color
    fill_in "Image", with: @bead.image
    fill_in "Number", with: @bead.number
    fill_in "Pattern", with: @bead.pattern
    fill_in "Stash", with: @bead.stash
    click_on "Create Bead"

    assert_text "Bead was successfully created"
    click_on "Back"
  end

  test "should update Bead" do
    visit bead_url(@bead)
    click_on "Edit this bead", match: :first

    fill_in "Color", with: @bead.color
    fill_in "Image", with: @bead.image
    fill_in "Number", with: @bead.number
    fill_in "Pattern", with: @bead.pattern
    fill_in "Stash", with: @bead.stash
    click_on "Update Bead"

    assert_text "Bead was successfully updated"
    click_on "Back"
  end

  test "should destroy Bead" do
    visit bead_url(@bead)
    click_on "Destroy this bead", match: :first

    assert_text "Bead was successfully destroyed"
  end
end
