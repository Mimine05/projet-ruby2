require 'test_helper'

class OtesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ote = otes(:one)
  end

  test "should get index" do
    get otes_url
    assert_response :success
  end

  test "should get new" do
    get new_ote_url
    assert_response :success
  end

  test "should create ote" do
    assert_difference('Ote.count') do
      post otes_url, params: { ote: {  } }
    end

    assert_redirected_to ote_url(Ote.last)
  end

  test "should show ote" do
    get ote_url(@ote)
    assert_response :success
  end

  test "should get edit" do
    get edit_ote_url(@ote)
    assert_response :success
  end

  test "should update ote" do
    patch ote_url(@ote), params: { ote: {  } }
    assert_redirected_to ote_url(@ote)
  end

  test "should destroy ote" do
    assert_difference('Ote.count', -1) do
      delete ote_url(@ote)
    end

    assert_redirected_to otes_url
  end
end
