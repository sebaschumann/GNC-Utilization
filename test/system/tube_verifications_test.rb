require "application_system_test_case"

class TubeVerificationsTest < ApplicationSystemTestCase
  setup do
    @tube_verification = tube_verifications(:one)
  end

  test "visiting the index" do
    visit tube_verifications_url
    assert_selector "h1", text: "Tube Verifications"
  end

  test "creating a Tube verification" do
    visit tube_verifications_url
    click_on "New Tube Verification"

    fill_in "Date", with: @tube_verification.date
    check "Enabled" if @tube_verification.enabled
    fill_in "Exam type", with: @tube_verification.exam_type_id
    fill_in "Technician", with: @tube_verification.technician_id
    fill_in "Tube", with: @tube_verification.tube_id
    click_on "Create Tube verification"

    assert_text "Tube verification was successfully created"
    click_on "Back"
  end

  test "updating a Tube verification" do
    visit tube_verifications_url
    click_on "Edit", match: :first

    fill_in "Date", with: @tube_verification.date
    check "Enabled" if @tube_verification.enabled
    fill_in "Exam type", with: @tube_verification.exam_type_id
    fill_in "Technician", with: @tube_verification.technician_id
    fill_in "Tube", with: @tube_verification.tube_id
    click_on "Update Tube verification"

    assert_text "Tube verification was successfully updated"
    click_on "Back"
  end

  test "destroying a Tube verification" do
    visit tube_verifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tube verification was successfully destroyed"
  end
end
