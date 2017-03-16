require 'test_helper'

class EtusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etu = etus(:one)
  end

  test "should get index" do
    get etus_url
    assert_response :success
  end

  test "should get new" do
    get new_etu_url
    assert_response :success
  end

  test "should create etu" do
    assert_difference('Etu.count') do
      post etus_url, params: { etu: {  } }
    end

    assert_redirected_to etu_url(Etu.last)
  end

  test "should show etu" do
    get etu_url(@etu)
    assert_response :success
  end

  test "should get edit" do
    get edit_etu_url(@etu)
    assert_response :success
  end

  test "should update etu" do
    patch etu_url(@etu), params: { etu: {  } }
    assert_redirected_to etu_url(@etu)
  end

  test "should destroy etu" do
    assert_difference('Etu.count', -1) do
      delete etu_url(@etu)
    end

    assert_redirected_to etus_url
  end
end
