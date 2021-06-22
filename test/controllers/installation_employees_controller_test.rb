require "test_helper"

class InstallationEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @installation_employee = installation_employees(:one)
  end

  test "should get index" do
    get installation_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_installation_employee_url
    assert_response :success
  end

  test "should create installation_employee" do
    assert_difference('InstallationEmployee.count') do
      post installation_employees_url, params: { installation_employee: { employee_id: @installation_employee.employee_id, kit_installation_id: @installation_employee.kit_installation_id } }
    end

    assert_redirected_to installation_employee_url(InstallationEmployee.last)
  end

  test "should show installation_employee" do
    get installation_employee_url(@installation_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_installation_employee_url(@installation_employee)
    assert_response :success
  end

  test "should update installation_employee" do
    patch installation_employee_url(@installation_employee), params: { installation_employee: { employee_id: @installation_employee.employee_id, kit_installation_id: @installation_employee.kit_installation_id } }
    assert_redirected_to installation_employee_url(@installation_employee)
  end

  test "should destroy installation_employee" do
    assert_difference('InstallationEmployee.count', -1) do
      delete installation_employee_url(@installation_employee)
    end

    assert_redirected_to installation_employees_url
  end
end
