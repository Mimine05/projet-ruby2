require 'test_helper'

class FtusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ftu = ftus(:one)
  end

  test "should get index" do
    get ftus_url
    assert_response :success
  end

  test "should get new" do
    get new_ftu_url
    assert_response :success
  end

  test "should create ftu" do
    assert_difference('Ftu.count') do
      post ftus_url, params: { ftu: {  } }
    end

    assert_redirected_to ftu_url(Ftu.last)
  end

  test "should show ftu" do
    get ftu_url(@ftu)
    assert_response :success
  end

  test "should get edit" do
    get edit_ftu_url(@ftu)
    assert_response :success
  end

  test "should update ftu" do
    patch ftu_url(@ftu), params: { ftu: {  } }
    assert_redirected_to ftu_url(@ftu)
  end

  test "should destroy ftu" do
    assert_difference('Ftu.count', -1) do
      delete ftu_url(@ftu)
    end

    assert_redirected_to ftus_url
  end
end
