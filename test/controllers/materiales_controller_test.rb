require "test_helper"

class MaterialesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materiale = materiales(:one)
  end

  test "should get index" do
    get materiales_url
    assert_response :success
  end

  test "should get new" do
    get new_materiale_url
    assert_response :success
  end

  test "should create materiale" do
    assert_difference("Materiale.count") do
      post materiales_url, params: { materiale: { caracteristicas: @materiale.caracteristicas, existencia: @materiale.existencia, nombre: @materiale.nombre } }
    end

    assert_redirected_to materiale_url(Materiale.last)
  end

  test "should show materiale" do
    get materiale_url(@materiale)
    assert_response :success
  end

  test "should get edit" do
    get edit_materiale_url(@materiale)
    assert_response :success
  end

  test "should update materiale" do
    patch materiale_url(@materiale), params: { materiale: { caracteristicas: @materiale.caracteristicas, existencia: @materiale.existencia, nombre: @materiale.nombre } }
    assert_redirected_to materiale_url(@materiale)
  end

  test "should destroy materiale" do
    assert_difference("Materiale.count", -1) do
      delete materiale_url(@materiale)
    end

    assert_redirected_to materiales_url
  end
end
