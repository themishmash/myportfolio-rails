require 'test_helper'

class ContactformControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contactform_index_url
    assert_response :success
  end

  test "should get show" do
    get contactform_show_url
    assert_response :success
  end

  test "should get edit" do
    get contactform_edit_url
    assert_response :success
  end

  test "should get new" do
    get contactform_new_url
    assert_response :success
  end

end
