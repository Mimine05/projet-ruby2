require 'test_helper'

class SecteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secteur = secteurs(:one)
  end

  test "should get index" do
    get secteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_secteur_url
    assert_response :success
  end

  test "should create secteur" do
    assert_difference('Secteur.count') do
      post secteurs_url, params: { secteur: { name: @secteur.name } }
    end

    assert_redirected_to secteur_url(Secteur.last)
  end

  test "should show secteur" do
    get secteur_url(@secteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_secteur_url(@secteur)
    assert_response :success
  end

  test "should update secteur" do
    patch secteur_url(@secteur), params: { secteur: { name: @secteur.name } }
    assert_redirected_to secteur_url(@secteur)
  end

  test "should destroy secteur" do
    assert_difference('Secteur.count', -1) do
      delete secteur_url(@secteur)
    end

    assert_redirected_to secteurs_url
  end
end
