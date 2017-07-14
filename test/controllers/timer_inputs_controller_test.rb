require 'test_helper'

class TimerInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timer_input = timer_inputs(:one)
  end

  test "should get index" do
    get timer_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_timer_input_url
    assert_response :success
  end

  test "should create timer_input" do
    assert_difference('TimerInput.count') do
      post timer_inputs_url, params: { timer_input: { set_timer: @timer_input.set_timer, title: @timer_input.title } }
    end

    assert_redirected_to timer_input_url(TimerInput.last)
  end

  test "should show timer_input" do
    get timer_input_url(@timer_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_timer_input_url(@timer_input)
    assert_response :success
  end

  test "should update timer_input" do
    patch timer_input_url(@timer_input), params: { timer_input: { set_timer: @timer_input.set_timer, title: @timer_input.title } }
    assert_redirected_to timer_input_url(@timer_input)
  end

  test "should destroy timer_input" do
    assert_difference('TimerInput.count', -1) do
      delete timer_input_url(@timer_input)
    end

    assert_redirected_to timer_inputs_url
  end
end
