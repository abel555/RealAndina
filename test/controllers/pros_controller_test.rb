require 'test_helper'

class ProsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pro = pros(:one)
  end

  test "should get index" do
    get pros_url
    assert_response :success
  end

  test "should get new" do
    get new_pro_url
    assert_response :success
  end

  test "should create pro" do
    assert_difference('Pro.count') do
      post pros_url, params: { pro: { body: @pro.body, image: @pro.image, title: @pro.title } }
    end

    assert_redirected_to pro_url(Pro.last)
  end

  test "should show pro" do
    get pro_url(@pro)
    assert_response :success
  end

  test "should get edit" do
    get edit_pro_url(@pro)
    assert_response :success
  end

  test "should update pro" do
    patch pro_url(@pro), params: { pro: { body: @pro.body, image: @pro.image, title: @pro.title } }
    assert_redirected_to pro_url(@pro)
  end

  test "should destroy pro" do
    assert_difference('Pro.count', -1) do
      delete pro_url(@pro)
    end

    assert_redirected_to pros_url
  end
end
