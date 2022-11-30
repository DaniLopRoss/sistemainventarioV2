require "application_system_test_case"

class HerramientaTest < ApplicationSystemTestCase
  setup do
    @herramientum = herramienta(:one)
  end

  test "visiting the index" do
    visit herramienta_url
    assert_selector "h1", text: "Herramienta"
  end

  test "should create herramientum" do
    visit herramienta_url
    click_on "New herramientum"

    fill_in "Caracteristicas", with: @herramientum.caracteristicas
    fill_in "Estatus", with: @herramientum.estatus
    fill_in "Existencia", with: @herramientum.existencia
    fill_in "Nombre", with: @herramientum.nombre
    click_on "Create Herramientum"

    assert_text "Herramientum was successfully created"
    click_on "Back"
  end

  test "should update Herramientum" do
    visit herramientum_url(@herramientum)
    click_on "Edit this herramientum", match: :first

    fill_in "Caracteristicas", with: @herramientum.caracteristicas
    fill_in "Estatus", with: @herramientum.estatus
    fill_in "Existencia", with: @herramientum.existencia
    fill_in "Nombre", with: @herramientum.nombre
    click_on "Update Herramientum"

    assert_text "Herramientum was successfully updated"
    click_on "Back"
  end

  test "should destroy Herramientum" do
    visit herramientum_url(@herramientum)
    click_on "Destroy this herramientum", match: :first

    assert_text "Herramientum was successfully destroyed"
  end
end
