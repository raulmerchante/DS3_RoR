require "test_helper"

class DesechosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desecho = desechos(:one)
  end

  test "should get index" do
    get desechos_url
    assert_response :success
  end

  test "should get new" do
    get new_desecho_url
    assert_response :success
  end

  test "should create desecho" do
    assert_difference('Desecho.count') do
      post desechos_url, params: { desecho: { id_vacuna_desechada: @desecho.id_vacuna_desechada, porcentaje_eficiencia: @desecho.porcentaje_eficiencia } }
    end

    assert_redirected_to desecho_url(Desecho.last)
  end

  test "should show desecho" do
    get desecho_url(@desecho)
    assert_response :success
  end

  test "should get edit" do
    get edit_desecho_url(@desecho)
    assert_response :success
  end

  test "should update desecho" do
    patch desecho_url(@desecho), params: { desecho: { id_vacuna_desechada: @desecho.id_vacuna_desechada, porcentaje_eficiencia: @desecho.porcentaje_eficiencia } }
    assert_redirected_to desecho_url(@desecho)
  end

  test "should destroy desecho" do
    assert_difference('Desecho.count', -1) do
      delete desecho_url(@desecho)
    end

    assert_redirected_to desechos_url
  end
end
