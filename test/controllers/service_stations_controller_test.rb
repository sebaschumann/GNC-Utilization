require "test_helper"

class ServiceStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_station = service_stations(:one)
  end

  test "should get index" do
    get service_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_service_station_url
    assert_response :success
  end

  test "should create service_station" do
    assert_difference('ServiceStation.count') do
      post service_stations_url, params: { service_station: { adress: @service_station.adress, dispensers_quantity: @service_station.dispensers_quantity, flag: @service_station.flag, fuel_types: @service_station.fuel_types, locality_id: @service_station.locality_id, name: @service_station.name } }
    end

    assert_redirected_to service_station_url(ServiceStation.last)
  end

  test "should show service_station" do
    get service_station_url(@service_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_station_url(@service_station)
    assert_response :success
  end

  test "should update service_station" do
    patch service_station_url(@service_station), params: { service_station: { adress: @service_station.adress, dispensers_quantity: @service_station.dispensers_quantity, flag: @service_station.flag, fuel_types: @service_station.fuel_types, locality_id: @service_station.locality_id, name: @service_station.name } }
    assert_redirected_to service_station_url(@service_station)
  end

  test "should destroy service_station" do
    assert_difference('ServiceStation.count', -1) do
      delete service_station_url(@service_station)
    end

    assert_redirected_to service_stations_url
  end
end
