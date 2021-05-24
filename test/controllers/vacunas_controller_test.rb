require "test_helper"

class VacunasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vacunas_index_url
    assert_response :success
  end
end
