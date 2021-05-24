require "test_helper"

class DiariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diario = diarios(:one)
  end

  test "should get index" do
    get diarios_url
    assert_response :success
  end

  test "should get new" do
    get new_diario_url
    assert_response :success
  end

  test "should create diario" do
    assert_difference('Diario.count') do
      post diarios_url, params: { diario: { apellidos_paciente: @diario.apellidos_paciente, dni: @diario.dni, fecha: @diario.fecha, nombre_paciente: @diario.nombre_paciente } }
    end

    assert_redirected_to diario_url(Diario.last)
  end

  test "should show diario" do
    get diario_url(@diario)
    assert_response :success
  end

  test "should get edit" do
    get edit_diario_url(@diario)
    assert_response :success
  end

  test "should update diario" do
    patch diario_url(@diario), params: { diario: { apellidos_paciente: @diario.apellidos_paciente, dni: @diario.dni, fecha: @diario.fecha, nombre_paciente: @diario.nombre_paciente } }
    assert_redirected_to diario_url(@diario)
  end

  test "should destroy diario" do
    assert_difference('Diario.count', -1) do
      delete diario_url(@diario)
    end

    assert_redirected_to diarios_url
  end
end
