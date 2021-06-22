require "application_system_test_case"

class KitInstallationsTest < ApplicationSystemTestCase
  setup do
    @kit_installation = kit_installations(:one)
  end

  test "visiting the index" do
    visit kit_installations_url
    assert_selector "h1", text: "Kit Installations"
  end

  test "creating a Kit installation" do
    visit kit_installations_url
    click_on "New Kit Installation"

    fill_in "Car", with: @kit_installation.car_id
    fill_in "Cost on argentinian pesos", with: @kit_installation.cost_on_argentinian_pesos
    fill_in "Date", with: @kit_installation.date
    fill_in "Tube kit", with: @kit_installation.tube_kit_id
    fill_in "Workshop", with: @kit_installation.workshop_id
    click_on "Create Kit installation"

    assert_text "Kit installation was successfully created"
    click_on "Back"
  end

  test "updating a Kit installation" do
    visit kit_installations_url
    click_on "Edit", match: :first

    fill_in "Car", with: @kit_installation.car_id
    fill_in "Cost on argentinian pesos", with: @kit_installation.cost_on_argentinian_pesos
    fill_in "Date", with: @kit_installation.date
    fill_in "Tube kit", with: @kit_installation.tube_kit_id
    fill_in "Workshop", with: @kit_installation.workshop_id
    click_on "Update Kit installation"

    assert_text "Kit installation was successfully updated"
    click_on "Back"
  end

  test "destroying a Kit installation" do
    visit kit_installations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kit installation was successfully destroyed"
  end
end
