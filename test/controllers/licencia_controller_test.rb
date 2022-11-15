require "test_helper"

class LicenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @licencium = licencia(:one)
  end

  test "should get index" do
    get licencia_url
    assert_response :success
  end

  test "should get new" do
    get new_licencium_url
    assert_response :success
  end

  test "should create licencium" do
    assert_difference("Licencium.count") do
      post licencia_url, params: { licencium: { anio: @licencium.anio, nombre: @licencium.nombre, num_licencia: @licencium.num_licencia } }
    end

    assert_redirected_to licencium_url(Licencium.last)
  end

  test "should show licencium" do
    get licencium_url(@licencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_licencium_url(@licencium)
    assert_response :success
  end

  test "should update licencium" do
    patch licencium_url(@licencium), params: { licencium: { anio: @licencium.anio, nombre: @licencium.nombre, num_licencia: @licencium.num_licencia } }
    assert_redirected_to licencium_url(@licencium)
  end

  test "should destroy licencium" do
    assert_difference("Licencium.count", -1) do
      delete licencium_url(@licencium)
    end

    assert_redirected_to licencia_url
  end
end
