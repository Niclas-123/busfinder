require "application_system_test_case"

class StopsTest < ApplicationSystemTestCase
  setup do
    @stop = stops(:one)
  end

  test "visiting the index" do
    visit stops_url
    assert_selector "h1", text: "Stops"
  end

  test "should create stop" do
    visit stops_url
    click_on "New stop"

    fill_in "Time", with: @stop.time
    click_on "Create Stop"

    assert_text "Stop was successfully created"
    click_on "Back"
  end

  test "should update Stop" do
    visit stop_url(@stop)
    click_on "Edit this stop", match: :first

    fill_in "Time", with: @stop.time
    click_on "Update Stop"

    assert_text "Stop was successfully updated"
    click_on "Back"
  end

  test "should destroy Stop" do
    visit stop_url(@stop)
    click_on "Destroy this stop", match: :first

    assert_text "Stop was successfully destroyed"
  end
end
