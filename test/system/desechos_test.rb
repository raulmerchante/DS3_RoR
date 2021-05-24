require "application_system_test_case"

class DesechosTest < ApplicationSystemTestCase
  setup do
    @desecho = desechos(:one)
  end

  test "visiting the index" do
    visit desechos_url
    assert_selector "h1", text: "Desechos"
  end

  test "creating a Desecho" do
    visit desechos_url
    click_on "New Desecho"

    fill_in "Id vacuna desechada", with: @desecho.id_vacuna_desechada
    fill_in "Porcentaje eficiencia", with: @desecho.porcentaje_eficiencia
    click_on "Create Desecho"

    assert_text "Desecho was successfully created"
    click_on "Back"
  end

  test "updating a Desecho" do
    visit desechos_url
    click_on "Edit", match: :first

    fill_in "Id vacuna desechada", with: @desecho.id_vacuna_desechada
    fill_in "Porcentaje eficiencia", with: @desecho.porcentaje_eficiencia
    click_on "Update Desecho"

    assert_text "Desecho was successfully updated"
    click_on "Back"
  end

  test "destroying a Desecho" do
    visit desechos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desecho was successfully destroyed"
  end
end
