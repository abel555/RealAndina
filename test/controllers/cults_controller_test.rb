require 'test_helper'

class CultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cult = cults(:one)
  end

  test "should get index" do
    get cults_url
    assert_response :success
  end

  test "should get new" do
    get new_cult_url
    assert_response :success
  end

  test "should create cult" do
    assert_difference('Cult.count') do
      post cults_url, params: { cult: { image: @cult.image, title: @cult.title } }
    end

    assert_redirected_to cult_url(Cult.last)
  end

  test "should show cult" do
    get cult_url(@cult)
    assert_response :success
  end

  test "should get edit" do
    get edit_cult_url(@cult)
    assert_response :success
  end

  test "should update cult" do
    patch cult_url(@cult), params: { cult: { image: @cult.image, title: @cult.title } }
    assert_redirected_to cult_url(@cult)
  end

  test "should destroy cult" do
    assert_difference('Cult.count', -1) do
      delete cult_url(@cult)
    end

    assert_redirected_to cults_url
  end
end
