require "application_system_test_case"

class MaterialesTest < ApplicationSystemTestCase
  setup do
    @materiale = materiales(:one)
  end

  test "visiting the index" do
    visit materiales_url
    assert_selector "h1", text: "Materiales"
  end

  test "should create materiale" do
    visit materiales_url
    click_on "New materiale"

    fill_in "Caracteristicas", with: @materiale.caracteristicas
    fill_in "Existencia", with: @materiale.existencia
    fill_in "Nombre", with: @materiale.nombre
    click_on "Create Materiale"

    assert_text "Materiale was successfully created"
    click_on "Back"
  end

  test "should update Materiale" do
    visit materiale_url(@materiale)
    click_on "Edit this materiale", match: :first

    fill_in "Caracteristicas", with: @materiale.caracteristicas
    fill_in "Existencia", with: @materiale.existencia
    fill_in "Nombre", with: @materiale.nombre
    click_on "Update Materiale"

    assert_text "Materiale was successfully updated"
    click_on "Back"
  end

  test "should destroy Materiale" do
    visit materiale_url(@materiale)
    click_on "Destroy this materiale", match: :first

    assert_text "Materiale was successfully destroyed"
  end
end
