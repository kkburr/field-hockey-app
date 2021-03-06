require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "DFHC Youth Signup"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | DFHC Youth Signup"
  end
end
