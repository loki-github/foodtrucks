require 'test_helper'

class FoodTrucksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
