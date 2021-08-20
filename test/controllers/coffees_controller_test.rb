require "test_helper"

class CoffeesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get coffees_new_url
    assert_response :success
  end
end
