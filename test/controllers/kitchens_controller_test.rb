require 'test_helper'

class KitchensControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get kitchens_edit_url
    assert_response :success
  end

  test "should get new" do
    get kitchens_new_url
    assert_response :success
  end

end
