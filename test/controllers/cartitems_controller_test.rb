require 'test_helper'

class CartitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cartitems_index_url
    assert_response :success
  end

end
