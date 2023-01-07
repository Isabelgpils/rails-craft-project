require "application_system_test_case"

class MetallicsTest < ApplicationSystemTestCase
  setup do
    @metallic = metallics(:one)
  end

  test "visiting the index" do
    visit metallics_url
    assert_selector "h1", text: "Metallics"
  end

  test "should create metallic" do
    visit metallics_url
    click_on "New metallic"

    fill_in "Brand", with: @metallic.brand
    fill_in "Color", with: @metallic.color
    fill_in "Image", with: @metallic.image
    fill_in "Number", with: @metallic.number
    fill_in "Pattern", with: @metallic.pattern
    fill_in "Stash", with: @metallic.stash
    fill_in "Type", with: @metallic.type
    click_on "Create Metallic"

    assert_text "Metallic was successfully created"
    click_on "Back"
  end

  test "should update Metallic" do
    visit metallic_url(@metallic)
    click_on "Edit this metallic", match: :first

    fill_in "Brand", with: @metallic.brand
    fill_in "Color", with: @metallic.color
    fill_in "Image", with: @metallic.image
    fill_in "Number", with: @metallic.number
    fill_in "Pattern", with: @metallic.pattern
    fill_in "Stash", with: @metallic.stash
    fill_in "Type", with: @metallic.type
    click_on "Update Metallic"

    assert_text "Metallic was successfully updated"
    click_on "Back"
  end

  test "should destroy Metallic" do
    visit metallic_url(@metallic)
    click_on "Destroy this metallic", match: :first

    assert_text "Metallic was successfully destroyed"
  end
end
