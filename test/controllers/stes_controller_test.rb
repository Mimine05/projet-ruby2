require 'test_helper'

class StesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ste = stes(:one)
  end

  test "should get index" do
    get stes_url
    assert_response :success
  end

  test "should get new" do
    get new_ste_url
    assert_response :success
  end

  test "should create ste" do
    assert_difference('Ste.count') do
      post stes_url, params: { ste: { description: @ste.description, name: @ste.name } }
    end

    assert_redirected_to ste_url(Ste.last)
  end

  test "should show ste" do
    get ste_url(@ste)
    assert_response :success
  end

  test "should get edit" do
    get edit_ste_url(@ste)
    assert_response :success
  end

  test "should update ste" do
    patch ste_url(@ste), params: { ste: { description: @ste.description, name: @ste.name } }
    assert_redirected_to ste_url(@ste)
  end

  test "should destroy ste" do
    assert_difference('Ste.count', -1) do
      delete ste_url(@ste)
    end

    assert_redirected_to stes_url
  end
end
