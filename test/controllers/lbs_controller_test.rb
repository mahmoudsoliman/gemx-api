require 'test_helper'

class LbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lb = lbs(:one)
  end

  test "should get index" do
    get lbs_url
    assert_response :success
  end

  test "should get new" do
    get new_lb_url
    assert_response :success
  end

  test "should create lb" do
    assert_difference('Lb.count') do
      post lbs_url, params: { lb: { name: @lb.name, url: @lb.url } }
    end

    assert_redirected_to lb_url(Lb.last)
  end

  test "should show lb" do
    get lb_url(@lb)
    assert_response :success
  end

  test "should get edit" do
    get edit_lb_url(@lb)
    assert_response :success
  end

  test "should update lb" do
    patch lb_url(@lb), params: { lb: { name: @lb.name, url: @lb.url } }
    assert_redirected_to lb_url(@lb)
  end

  test "should destroy lb" do
    assert_difference('Lb.count', -1) do
      delete lb_url(@lb)
    end

    assert_redirected_to lbs_url
  end
end
