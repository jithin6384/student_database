require 'test_helper'

class UnitTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unit_test_index_url
    assert_response :success
  end

  test "should get new" do
    get unit_test_new_url
    assert_response :success
  end

end
