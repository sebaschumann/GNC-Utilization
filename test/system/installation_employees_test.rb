require "application_system_test_case"

class InstallationEmployeesTest < ApplicationSystemTestCase
  setup do
    @installation_employee = installation_employees(:one)
  end

  test "visiting the index" do
    visit installation_employees_url
    assert_selector "h1", text: "Installation Employees"
  end

  test "creating a Installation employee" do
    visit installation_employees_url
    click_on "New Installation Employee"

    fill_in "Employee", with: @installation_employee.employee_id
    fill_in "Kit installation", with: @installation_employee.kit_installation_id
    click_on "Create Installation employee"

    assert_text "Installation employee was successfully created"
    click_on "Back"
  end

  test "updating a Installation employee" do
    visit installation_employees_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @installation_employee.employee_id
    fill_in "Kit installation", with: @installation_employee.kit_installation_id
    click_on "Update Installation employee"

    assert_text "Installation employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Installation employee" do
    visit installation_employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Installation employee was successfully destroyed"
  end
end
