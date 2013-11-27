require 'test_helper'

class TermsConControllerTest < ActionController::TestCase
  test "should get terms_con" do
    get :terms_con
    assert_response :success
  end

end
