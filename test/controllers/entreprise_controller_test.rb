require 'test_helper'

class EntrepriseControllerTest < ActionDispatch::IntegrationTest
  test "should get profil" do
    get entreprise_profil_url
    assert_response :success
  end

end
