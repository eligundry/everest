require 'test_helper'

class ListingControllerTest < ActionController::TestCase
  test "should get r" do
    get :r
    assert_response :success
  end

end
