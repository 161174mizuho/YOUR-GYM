require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get ::members" do
    get public_::members_url
    assert_response :success
  end
end
