require "test_helper"

class DateInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_input = date_inputs(:one)
  end

  test "should get index" do
    get date_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_date_input_url
    assert_response :success
  end

  test "should create date_input" do
    assert_difference("DateInput.count") do
      post date_inputs_url, params: { date_input: { sample: @date_input.sample } }
    end

    assert_redirected_to date_input_url(DateInput.last)
  end

  test "should show date_input" do
    get date_input_url(@date_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_input_url(@date_input)
    assert_response :success
  end

  test "should update date_input" do
    patch date_input_url(@date_input), params: { date_input: { sample: @date_input.sample } }
    assert_redirected_to date_input_url(@date_input)
  end

  test "should destroy date_input" do
    assert_difference("DateInput.count", -1) do
      delete date_input_url(@date_input)
    end

    assert_redirected_to date_inputs_url
  end
end
