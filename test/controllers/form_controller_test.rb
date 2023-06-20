require "test_helper"

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get ask" do
    get form_ask_url
    assert_response :success
  end
end
