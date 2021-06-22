require "test_helper"

class KitVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kit_verification = kit_verifications(:one)
  end

  test "should get index" do
    get kit_verifications_url
    assert_response :success
  end

  test "should get new" do
    get new_kit_verification_url
    assert_response :success
  end

  test "should create kit_verification" do
    assert_difference('KitVerification.count') do
      post kit_verifications_url, params: { kit_verification: { enabled: @kit_verification.enabled, tube_kit_id: @kit_verification.tube_kit_id, year: @kit_verification.year } }
    end

    assert_redirected_to kit_verification_url(KitVerification.last)
  end

  test "should show kit_verification" do
    get kit_verification_url(@kit_verification)
    assert_response :success
  end

  test "should get edit" do
    get edit_kit_verification_url(@kit_verification)
    assert_response :success
  end

  test "should update kit_verification" do
    patch kit_verification_url(@kit_verification), params: { kit_verification: { enabled: @kit_verification.enabled, tube_kit_id: @kit_verification.tube_kit_id, year: @kit_verification.year } }
    assert_redirected_to kit_verification_url(@kit_verification)
  end

  test "should destroy kit_verification" do
    assert_difference('KitVerification.count', -1) do
      delete kit_verification_url(@kit_verification)
    end

    assert_redirected_to kit_verifications_url
  end
end
