require "test_helper"

class GncChargesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gnc_charge = gnc_charges(:one)
  end

  test "should get index" do
    get gnc_charges_url
    assert_response :success
  end

  test "should get new" do
    get new_gnc_charge_url
    assert_response :success
  end

  test "should create gnc_charge" do
    assert_difference('GncCharge.count') do
      post gnc_charges_url, params: { gnc_charge: { car_id: @gnc_charge.car_id, celsius_temperature: @gnc_charge.celsius_temperature, charge_moment: @gnc_charge.charge_moment, client_id: @gnc_charge.client_id, cost_on_argentinian_pesos: @gnc_charge.cost_on_argentinian_pesos, service_station_id: @gnc_charge.service_station_id, weather: @gnc_charge.weather } }
    end

    assert_redirected_to gnc_charge_url(GncCharge.last)
  end

  test "should show gnc_charge" do
    get gnc_charge_url(@gnc_charge)
    assert_response :success
  end

  test "should get edit" do
    get edit_gnc_charge_url(@gnc_charge)
    assert_response :success
  end

  test "should update gnc_charge" do
    patch gnc_charge_url(@gnc_charge), params: { gnc_charge: { car_id: @gnc_charge.car_id, celsius_temperature: @gnc_charge.celsius_temperature, charge_moment: @gnc_charge.charge_moment, client_id: @gnc_charge.client_id, cost_on_argentinian_pesos: @gnc_charge.cost_on_argentinian_pesos, service_station_id: @gnc_charge.service_station_id, weather: @gnc_charge.weather } }
    assert_redirected_to gnc_charge_url(@gnc_charge)
  end

  test "should destroy gnc_charge" do
    assert_difference('GncCharge.count', -1) do
      delete gnc_charge_url(@gnc_charge)
    end

    assert_redirected_to gnc_charges_url
  end
end
