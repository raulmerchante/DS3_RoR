require "application_system_test_case"

class MivacunasTest < ApplicationSystemTestCase
  setup do
    @mivacuna = mivacunas(:one)
  end

  test "visiting the index" do
    visit mivacunas_url
    assert_selector "h1", text: "Mivacunas"
  end

  test "creating a Mivacuna" do
    visit mivacunas_url
    click_on "New Mivacuna"

    fill_in "Antigenos", with: @mivacuna.antigenos
    fill_in "Conservantes", with: @mivacuna.conservantes
    fill_in "Lipidos", with: @mivacuna.lipidos
    click_on "Create Mivacuna"

    assert_text "Mivacuna was successfully created"
    click_on "Back"
  end

  test "updating a Mivacuna" do
    visit mivacunas_url
    click_on "Edit", match: :first

    fill_in "Antigenos", with: @mivacuna.antigenos
    fill_in "Conservantes", with: @mivacuna.conservantes
    fill_in "Lipidos", with: @mivacuna.lipidos
    click_on "Update Mivacuna"

    assert_text "Mivacuna was successfully updated"
    click_on "Back"
  end

  test "destroying a Mivacuna" do
    visit mivacunas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mivacuna was successfully destroyed"
  end
end
