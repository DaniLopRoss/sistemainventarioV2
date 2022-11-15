require "application_system_test_case"

class EquiposTest < ApplicationSystemTestCase
  setup do
    @equipo = equipos(:one)
  end

  test "visiting the index" do
    visit equipos_url
    assert_selector "h1", text: "Equipos"
  end

  test "should create equipo" do
    visit equipos_url
    click_on "New equipo"

    fill_in "Areas", with: @equipo.areas_id
    fill_in "Departamento", with: @equipo.departamento_id
    fill_in "Disco duro", with: @equipo.disco_duro
    fill_in "Licencia", with: @equipo.licencia_id
    fill_in "Marca", with: @equipo.marca_id
    fill_in "Modelo", with: @equipo.modelo
    fill_in "Observaciones", with: @equipo.observaciones
    fill_in "Ram", with: @equipo.ram
    fill_in "Serial", with: @equipo.serial
    fill_in "Serie", with: @equipo.serie
    fill_in "Tipo", with: @equipo.tipo
    fill_in "Tipos", with: @equipo.tipos_id
    click_on "Create Equipo"

    assert_text "Equipo was successfully created"
    click_on "Back"
  end

  test "should update Equipo" do
    visit equipo_url(@equipo)
    click_on "Edit this equipo", match: :first

    fill_in "Areas", with: @equipo.areas_id
    fill_in "Departamento", with: @equipo.departamento_id
    fill_in "Disco duro", with: @equipo.disco_duro
    fill_in "Licencia", with: @equipo.licencia_id
    fill_in "Marca", with: @equipo.marca_id
    fill_in "Modelo", with: @equipo.modelo
    fill_in "Observaciones", with: @equipo.observaciones
    fill_in "Ram", with: @equipo.ram
    fill_in "Serial", with: @equipo.serial
    fill_in "Serie", with: @equipo.serie
    fill_in "Tipo", with: @equipo.tipo
    fill_in "Tipos", with: @equipo.tipos_id
    click_on "Update Equipo"

    assert_text "Equipo was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipo" do
    visit equipo_url(@equipo)
    click_on "Destroy this equipo", match: :first

    assert_text "Equipo was successfully destroyed"
  end
end
