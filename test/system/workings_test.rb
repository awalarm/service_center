require "application_system_test_case"

class WorkingsTest < ApplicationSystemTestCase
  setup do
    @working = workings(:one)
  end

  test "visiting the index" do
    visit workings_url
    assert_selector "h1", text: "Workings"
  end

  test "creating a Working" do
    visit workings_url
    click_on "New Working"

    fill_in "Email", with: @working.email
    fill_in "Name", with: @working.name
    fill_in "Repair", with: @working.repair_id
    click_on "Create Working"

    assert_text "Working was successfully created"
    click_on "Back"
  end

  test "updating a Working" do
    visit workings_url
    click_on "Edit", match: :first

    fill_in "Email", with: @working.email
    fill_in "Name", with: @working.name
    fill_in "Repair", with: @working.repair_id
    click_on "Update Working"

    assert_text "Working was successfully updated"
    click_on "Back"
  end

  test "destroying a Working" do
    visit workings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Working was successfully destroyed"
  end
end
