require "application_system_test_case"

class DiariosTest < ApplicationSystemTestCase
  setup do
    @diario = diarios(:one)
  end

  test "visiting the index" do
    visit diarios_url
    assert_selector "h1", text: "Diarios"
  end

  test "creating a Diario" do
    visit diarios_url
    click_on "New Diario"

    fill_in "Apellidos paciente", with: @diario.apellidos_paciente
    fill_in "Dni", with: @diario.dni
    fill_in "Fecha", with: @diario.fecha
    fill_in "Nombre paciente", with: @diario.nombre_paciente
    click_on "Create Diario"

    assert_text "Diario was successfully created"
    click_on "Back"
  end

  test "updating a Diario" do
    visit diarios_url
    click_on "Edit", match: :first

    fill_in "Apellidos paciente", with: @diario.apellidos_paciente
    fill_in "Dni", with: @diario.dni
    fill_in "Fecha", with: @diario.fecha
    fill_in "Nombre paciente", with: @diario.nombre_paciente
    click_on "Update Diario"

    assert_text "Diario was successfully updated"
    click_on "Back"
  end

  test "destroying a Diario" do
    visit diarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diario was successfully destroyed"
  end
end
