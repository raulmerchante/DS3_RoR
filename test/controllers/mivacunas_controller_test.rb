require "test_helper"

class MivacunasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mivacuna = mivacunas(:one)
  end

  test "should get index" do
    get mivacunas_url
    assert_response :success
  end

  test "should get new" do
    get new_mivacuna_url
    assert_response :success
  end

  test "should create mivacuna" do
    assert_difference('Mivacuna.count') do
      post mivacunas_url, params: { mivacuna: { antigenos: @mivacuna.antigenos, conservantes: @mivacuna.conservantes, lipidos: @mivacuna.lipidos } }
    end

    assert_redirected_to mivacuna_url(Mivacuna.last)
  end

  test "should show mivacuna" do
    get mivacuna_url(@mivacuna)
    assert_response :success
  end

  test "should get edit" do
    get edit_mivacuna_url(@mivacuna)
    assert_response :success
  end

  test "should update mivacuna" do
    patch mivacuna_url(@mivacuna), params: { mivacuna: { antigenos: @mivacuna.antigenos, conservantes: @mivacuna.conservantes, lipidos: @mivacuna.lipidos } }
    assert_redirected_to mivacuna_url(@mivacuna)
  end

  test "should destroy mivacuna" do
    assert_difference('Mivacuna.count', -1) do
      delete mivacuna_url(@mivacuna)
    end

    assert_redirected_to mivacunas_url
  end
end
