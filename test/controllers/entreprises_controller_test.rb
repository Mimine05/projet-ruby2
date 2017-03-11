require 'test_helper'

class EntreprisesControllerTest < ActionDispatch::IntegrationTest
  test "should get profil" do
    get entreprises_profil_url
    assert_response :success
  end

end
