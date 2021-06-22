require "test_helper"

class KitInstallationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kit_installation = kit_installations(:one)
  end

  test "should get index" do
    get kit_installations_url
    assert_response :success
  end

  test "should get new" do
    get new_kit_installation_url
    assert_response :success
  end

  test "should create kit_installation" do
    assert_difference('KitInstallation.count') do
      post kit_installations_url, params: { kit_installation: { car_id: @kit_installation.car_id, cost_on_argentinian_pesos: @kit_installation.cost_on_argentinian_pesos, date: @kit_installation.date, tube_kit_id: @kit_installation.tube_kit_id, workshop_id: @kit_installation.workshop_id } }
    end

    assert_redirected_to kit_installation_url(KitInstallation.last)
  end

  test "should show kit_installation" do
    get kit_installation_url(@kit_installation)
    assert_response :success
  end

  test "should get edit" do
    get edit_kit_installation_url(@kit_installation)
    assert_response :success
  end

  test "should update kit_installation" do
    patch kit_installation_url(@kit_installation), params: { kit_installation: { car_id: @kit_installation.car_id, cost_on_argentinian_pesos: @kit_installation.cost_on_argentinian_pesos, date: @kit_installation.date, tube_kit_id: @kit_installation.tube_kit_id, workshop_id: @kit_installation.workshop_id } }
    assert_redirected_to kit_installation_url(@kit_installation)
  end

  test "should destroy kit_installation" do
    assert_difference('KitInstallation.count', -1) do
      delete kit_installation_url(@kit_installation)
    end

    assert_redirected_to kit_installations_url
  end
end
