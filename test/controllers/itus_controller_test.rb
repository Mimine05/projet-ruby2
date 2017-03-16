require 'test_helper'

class ItusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itu = itus(:one)
  end

  test "should get index" do
    get itus_url
    assert_response :success
  end

  test "should get new" do
    get new_itu_url
    assert_response :success
  end

  test "should create itu" do
    assert_difference('Itu.count') do
      post itus_url, params: { itu: {  } }
    end

    assert_redirected_to itu_url(Itu.last)
  end

  test "should show itu" do
    get itu_url(@itu)
    assert_response :success
  end

  test "should get edit" do
    get edit_itu_url(@itu)
    assert_response :success
  end

  test "should update itu" do
    patch itu_url(@itu), params: { itu: {  } }
    assert_redirected_to itu_url(@itu)
  end

  test "should destroy itu" do
    assert_difference('Itu.count', -1) do
      delete itu_url(@itu)
    end

    assert_redirected_to itus_url
  end
end
