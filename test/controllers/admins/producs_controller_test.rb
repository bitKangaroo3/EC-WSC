require 'test_helper'

class Admins::ProducsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_producs_new_url
    assert_response :success
  end

end
