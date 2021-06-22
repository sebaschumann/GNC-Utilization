require "application_system_test_case"

class ServiceStationsTest < ApplicationSystemTestCase
  setup do
    @service_station = service_stations(:one)
  end

  test "visiting the index" do
    visit service_stations_url
    assert_selector "h1", text: "Service Stations"
  end

  test "creating a Service station" do
    visit service_stations_url
    click_on "New Service Station"

    fill_in "Adress", with: @service_station.adress
    fill_in "Dispensers quantity", with: @service_station.dispensers_quantity
    fill_in "Flag", with: @service_station.flag
    fill_in "Fuel types", with: @service_station.fuel_types
    fill_in "Locality", with: @service_station.locality_id
    fill_in "Name", with: @service_station.name
    click_on "Create Service station"

    assert_text "Service station was successfully created"
    click_on "Back"
  end

  test "updating a Service station" do
    visit service_stations_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @service_station.adress
    fill_in "Dispensers quantity", with: @service_station.dispensers_quantity
    fill_in "Flag", with: @service_station.flag
    fill_in "Fuel types", with: @service_station.fuel_types
    fill_in "Locality", with: @service_station.locality_id
    fill_in "Name", with: @service_station.name
    click_on "Update Service station"

    assert_text "Service station was successfully updated"
    click_on "Back"
  end

  test "destroying a Service station" do
    visit service_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service station was successfully destroyed"
  end
end
