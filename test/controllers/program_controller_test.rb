require 'test_helper'

class ProgramControllerTest < ActionController::TestCase
  test "should get match" do
    get :match
    assert_response :success
  end

end
