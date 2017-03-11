require 'test_helper'

class InteretsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interet = interets(:one)
  end

  test "should get index" do
    get interets_url
    assert_response :success
  end

  test "should get new" do
    get new_interet_url
    assert_response :success
  end

  test "should create interet" do
    assert_difference('Interet.count') do
      post interets_url, params: { interet: { categorie: @interet.categorie, name: @interet.name } }
    end

    assert_redirected_to interet_url(Interet.last)
  end

  test "should show interet" do
    get interet_url(@interet)
    assert_response :success
  end

  test "should get edit" do
    get edit_interet_url(@interet)
    assert_response :success
  end

  test "should update interet" do
    patch interet_url(@interet), params: { interet: { categorie: @interet.categorie, name: @interet.name } }
    assert_redirected_to interet_url(@interet)
  end

  test "should destroy interet" do
    assert_difference('Interet.count', -1) do
      delete interet_url(@interet)
    end

    assert_redirected_to interets_url
  end
end
