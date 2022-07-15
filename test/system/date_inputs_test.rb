require "application_system_test_case"

class DateInputsTest < ApplicationSystemTestCase
  setup do
    @date_input = date_inputs(:one)
  end

  test "visiting the index" do
    visit date_inputs_url
    assert_selector "h1", text: "Date inputs"
  end

  test "should create date input" do
    visit date_inputs_url
    click_on "New date input"

    fill_in "Sample", with: @date_input.sample
    click_on "Create Date input"

    assert_text "Date input was successfully created"
    click_on "Back"
  end

  test "should update Date input" do
    visit date_input_url(@date_input)
    click_on "Edit this date input", match: :first

    fill_in "Sample", with: @date_input.sample
    click_on "Update Date input"

    assert_text "Date input was successfully updated"
    click_on "Back"
  end

  test "should destroy Date input" do
    visit date_input_url(@date_input)
    click_on "Destroy this date input", match: :first

    assert_text "Date input was successfully destroyed"
  end
end
