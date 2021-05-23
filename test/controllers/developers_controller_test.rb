require "test_helper"

class DevelopersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @developer = developers(:one)
  end

  test "should get index" do
    get developers_url
    assert_response :success
  end

  test "should get new" do
    get new_developer_url
    assert_response :success
  end

  test "should create developer" do
    assert_difference('Developer.count') do
      post developers_url, params: { developer: { name: @developer.name, project_id: @developer.project_id, surname: @developer.surname } }
    end

    assert_redirected_to developer_url(Developer.last)
  end

  test "should show developer" do
    get developer_url(@developer)
    assert_response :success
  end

  test "should get edit" do
    get edit_developer_url(@developer)
    assert_response :success
  end

  test "should update developer" do
    patch developer_url(@developer), params: { developer: { name: @developer.name, project_id: @developer.project_id, surname: @developer.surname } }
    assert_redirected_to developer_url(@developer)
  end

  test "should destroy developer" do
    assert_difference('Developer.count', -1) do
      delete developer_url(@developer)
    end

    assert_redirected_to developers_url
  end
end
