require "application_system_test_case"

class TubesTest < ApplicationSystemTestCase
  setup do
    @tube = tubes(:one)
  end

  test "visiting the index" do
    visit tubes_url
    assert_selector "h1", text: "Tubes"
  end

  test "creating a Tube" do
    visit tubes_url
    click_on "New Tube"

    fill_in "Capacity on liters", with: @tube.capacity_on_liters
    fill_in "Diameter on milimeters", with: @tube.diameter_on_milimeters
    fill_in "Expiration date", with: @tube.expiration_date
    click_on "Create Tube"

    assert_text "Tube was successfully created"
    click_on "Back"
  end

  test "updating a Tube" do
    visit tubes_url
    click_on "Edit", match: :first

    fill_in "Capacity on liters", with: @tube.capacity_on_liters
    fill_in "Diameter on milimeters", with: @tube.diameter_on_milimeters
    fill_in "Expiration date", with: @tube.expiration_date
    click_on "Update Tube"

    assert_text "Tube was successfully updated"
    click_on "Back"
  end

  test "destroying a Tube" do
    visit tubes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tube was successfully destroyed"
  end
end
