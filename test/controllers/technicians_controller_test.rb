require "test_helper"

class TechniciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technician = technicians(:one)
  end

  test "should get index" do
    get technicians_url
    assert_response :success
  end

  test "should get new" do
    get new_technician_url
    assert_response :success
  end

  test "should create technician" do
    assert_difference('Technician.count') do
      post technicians_url, params: { technician: { birthday: @technician.birthday, document_number: @technician.document_number, first_name: @technician.first_name, last_name: @technician.last_name } }
    end

    assert_redirected_to technician_url(Technician.last)
  end

  test "should show technician" do
    get technician_url(@technician)
    assert_response :success
  end

  test "should get edit" do
    get edit_technician_url(@technician)
    assert_response :success
  end

  test "should update technician" do
    patch technician_url(@technician), params: { technician: { birthday: @technician.birthday, document_number: @technician.document_number, first_name: @technician.first_name, last_name: @technician.last_name } }
    assert_redirected_to technician_url(@technician)
  end

  test "should destroy technician" do
    assert_difference('Technician.count', -1) do
      delete technician_url(@technician)
    end

    assert_redirected_to technicians_url
  end
end
