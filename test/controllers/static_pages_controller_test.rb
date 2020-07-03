require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @lavariable = "J'aime les chats"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Sample App"

  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Sample App"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Sample App"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Sample App"
  end
  
end
