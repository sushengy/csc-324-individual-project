require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Memepedia - For Meme Lovers"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "picture index should not be nil" do
    get root_path
    assert_response :success
    assert_not_nil assigns (:index)
  end

  test "picture index should not be empty" do
    get root_path
    assert_response :success
    assert_not_empty (:index)
  end

  test "picture index should be in range" do
    get root_path
    assert_response :success
    assert_includes (assigns :index_min)..(assigns :index_max), (assigns :index)
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@base_title} | Help"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title} | About"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end
end
