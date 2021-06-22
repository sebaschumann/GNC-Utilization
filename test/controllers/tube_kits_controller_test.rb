require "test_helper"

class TubeKitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tube_kit = tube_kits(:one)
  end

  test "should get index" do
    get tube_kits_url
    assert_response :success
  end

  test "should get new" do
    get new_tube_kit_url
    assert_response :success
  end

  test "should create tube_kit" do
    assert_difference('TubeKit.count') do
      post tube_kits_url, params: { tube_kit: { kit_number: @tube_kit.kit_number, tube_id: @tube_kit.tube_id } }
    end

    assert_redirected_to tube_kit_url(TubeKit.last)
  end

  test "should show tube_kit" do
    get tube_kit_url(@tube_kit)
    assert_response :success
  end

  test "should get edit" do
    get edit_tube_kit_url(@tube_kit)
    assert_response :success
  end

  test "should update tube_kit" do
    patch tube_kit_url(@tube_kit), params: { tube_kit: { kit_number: @tube_kit.kit_number, tube_id: @tube_kit.tube_id } }
    assert_redirected_to tube_kit_url(@tube_kit)
  end

  test "should destroy tube_kit" do
    assert_difference('TubeKit.count', -1) do
      delete tube_kit_url(@tube_kit)
    end

    assert_redirected_to tube_kits_url
  end
end
