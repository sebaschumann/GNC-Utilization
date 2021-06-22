require "application_system_test_case"

class KitVerificationsTest < ApplicationSystemTestCase
  setup do
    @kit_verification = kit_verifications(:one)
  end

  test "visiting the index" do
    visit kit_verifications_url
    assert_selector "h1", text: "Kit Verifications"
  end

  test "creating a Kit verification" do
    visit kit_verifications_url
    click_on "New Kit Verification"

    check "Enabled" if @kit_verification.enabled
    fill_in "Tube kit", with: @kit_verification.tube_kit_id
    fill_in "Year", with: @kit_verification.year
    click_on "Create Kit verification"

    assert_text "Kit verification was successfully created"
    click_on "Back"
  end

  test "updating a Kit verification" do
    visit kit_verifications_url
    click_on "Edit", match: :first

    check "Enabled" if @kit_verification.enabled
    fill_in "Tube kit", with: @kit_verification.tube_kit_id
    fill_in "Year", with: @kit_verification.year
    click_on "Update Kit verification"

    assert_text "Kit verification was successfully updated"
    click_on "Back"
  end

  test "destroying a Kit verification" do
    visit kit_verifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kit verification was successfully destroyed"
  end
end
