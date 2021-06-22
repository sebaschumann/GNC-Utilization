require "application_system_test_case"

class TubeKitsTest < ApplicationSystemTestCase
  setup do
    @tube_kit = tube_kits(:one)
  end

  test "visiting the index" do
    visit tube_kits_url
    assert_selector "h1", text: "Tube Kits"
  end

  test "creating a Tube kit" do
    visit tube_kits_url
    click_on "New Tube Kit"

    fill_in "Kit number", with: @tube_kit.kit_number
    fill_in "Tube", with: @tube_kit.tube_id
    click_on "Create Tube kit"

    assert_text "Tube kit was successfully created"
    click_on "Back"
  end

  test "updating a Tube kit" do
    visit tube_kits_url
    click_on "Edit", match: :first

    fill_in "Kit number", with: @tube_kit.kit_number
    fill_in "Tube", with: @tube_kit.tube_id
    click_on "Update Tube kit"

    assert_text "Tube kit was successfully updated"
    click_on "Back"
  end

  test "destroying a Tube kit" do
    visit tube_kits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tube kit was successfully destroyed"
  end
end
