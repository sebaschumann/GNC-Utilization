require "application_system_test_case"

class GncChargesTest < ApplicationSystemTestCase
  setup do
    @gnc_charge = gnc_charges(:one)
  end

  test "visiting the index" do
    visit gnc_charges_url
    assert_selector "h1", text: "Gnc Charges"
  end

  test "creating a Gnc charge" do
    visit gnc_charges_url
    click_on "New Gnc Charge"

    fill_in "Car", with: @gnc_charge.car_id
    fill_in "Celsius temperature", with: @gnc_charge.celsius_temperature
    fill_in "Charge moment", with: @gnc_charge.charge_moment
    fill_in "Client", with: @gnc_charge.client_id
    fill_in "Cost on argentinian pesos", with: @gnc_charge.cost_on_argentinian_pesos
    fill_in "Service station", with: @gnc_charge.service_station_id
    fill_in "Weather", with: @gnc_charge.weather
    click_on "Create Gnc charge"

    assert_text "Gnc charge was successfully created"
    click_on "Back"
  end

  test "updating a Gnc charge" do
    visit gnc_charges_url
    click_on "Edit", match: :first

    fill_in "Car", with: @gnc_charge.car_id
    fill_in "Celsius temperature", with: @gnc_charge.celsius_temperature
    fill_in "Charge moment", with: @gnc_charge.charge_moment
    fill_in "Client", with: @gnc_charge.client_id
    fill_in "Cost on argentinian pesos", with: @gnc_charge.cost_on_argentinian_pesos
    fill_in "Service station", with: @gnc_charge.service_station_id
    fill_in "Weather", with: @gnc_charge.weather
    click_on "Update Gnc charge"

    assert_text "Gnc charge was successfully updated"
    click_on "Back"
  end

  test "destroying a Gnc charge" do
    visit gnc_charges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gnc charge was successfully destroyed"
  end
end
