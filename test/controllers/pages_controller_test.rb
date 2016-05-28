require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get price_list" do
    get :price_list
    assert_response :success
  end

end
