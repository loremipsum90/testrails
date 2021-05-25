require "application_system_test_case"

class JobpostersTest < ApplicationSystemTestCase
  setup do
    @jobposter = jobposters(:one)
  end

  test "visiting the index" do
    visit jobposters_url
    assert_selector "h1", text: "Jobposters"
  end

  test "creating a Jobposter" do
    visit jobposters_url
    click_on "New Jobposter"

    fill_in "Email", with: @jobposter.email
    fill_in "First name", with: @jobposter.first_name
    fill_in "Job nature", with: @jobposter.job_nature
    fill_in "Last name", with: @jobposter.last_name
    fill_in "Phone", with: @jobposter.phone
    click_on "Create Jobposter"

    assert_text "Jobposter was successfully created"
    click_on "Back"
  end

  test "updating a Jobposter" do
    visit jobposters_url
    click_on "Edit", match: :first

    fill_in "Email", with: @jobposter.email
    fill_in "First name", with: @jobposter.first_name
    fill_in "Job nature", with: @jobposter.job_nature
    fill_in "Last name", with: @jobposter.last_name
    fill_in "Phone", with: @jobposter.phone
    click_on "Update Jobposter"

    assert_text "Jobposter was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobposter" do
    visit jobposters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobposter was successfully destroyed"
  end
end
