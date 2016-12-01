require 'test_helper'

class BluehouseControllerTest < ActionController::TestCase
  test "should get haya" do
    get :haya
    assert_response :success
  end

end
