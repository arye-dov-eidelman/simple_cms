require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_index_url
    assert_response :success
  end

  test "should get new" do
    get blog_new_url
    assert_response :success
  end

  test "should get create" do
    get blog_create_url
    assert_response :success
  end

  test "should get edit" do
    get blog_edit_url
    assert_response :success
  end

  test "should get update" do
    get blog_update_url
    assert_response :success
  end

  test "should get publish" do
    get blog_publish_url
    assert_response :success
  end

  test "should get unpublish" do
    get blog_unpublish_url
    assert_response :success
  end

  test "should get show" do
    get blog_show_url
    assert_response :success
  end

  test "should get delete" do
    get blog_delete_url
    assert_response :success
  end

end
