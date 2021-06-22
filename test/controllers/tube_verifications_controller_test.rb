require "test_helper"

class TubeVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tube_verification = tube_verifications(:one)
  end

  test "should get index" do
    get tube_verifications_url
    assert_response :success
  end

  test "should get new" do
    get new_tube_verification_url
    assert_response :success
  end

  test "should create tube_verification" do
    assert_difference('TubeVerification.count') do
      post tube_verifications_url, params: { tube_verification: { date: @tube_verification.date, enabled: @tube_verification.enabled, exam_type_id: @tube_verification.exam_type_id, technician_id: @tube_verification.technician_id, tube_id: @tube_verification.tube_id } }
    end

    assert_redirected_to tube_verification_url(TubeVerification.last)
  end

  test "should show tube_verification" do
    get tube_verification_url(@tube_verification)
    assert_response :success
  end

  test "should get edit" do
    get edit_tube_verification_url(@tube_verification)
    assert_response :success
  end

  test "should update tube_verification" do
    patch tube_verification_url(@tube_verification), params: { tube_verification: { date: @tube_verification.date, enabled: @tube_verification.enabled, exam_type_id: @tube_verification.exam_type_id, technician_id: @tube_verification.technician_id, tube_id: @tube_verification.tube_id } }
    assert_redirected_to tube_verification_url(@tube_verification)
  end

  test "should destroy tube_verification" do
    assert_difference('TubeVerification.count', -1) do
      delete tube_verification_url(@tube_verification)
    end

    assert_redirected_to tube_verifications_url
  end
end
