require 'test_helper'

class Admins::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_products_new_url
    assert_response :success
  end

end
