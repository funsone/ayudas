require 'test_helper'

class AyudasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ayuda = ayudas(:one)
  end

  test "should get index" do
    get ayudas_url
    assert_response :success
  end

  test "should get new" do
    get new_ayuda_url
    assert_response :success
  end

  test "should create ayuda" do
    assert_difference('Ayuda.count') do
      post ayudas_url, params: { ayuda: { departamento_id: @ayuda.departamento_id, nombre: @ayuda.nombre } }
    end

    assert_redirected_to ayuda_url(Ayuda.last)
  end

  test "should show ayuda" do
    get ayuda_url(@ayuda)
    assert_response :success
  end

  test "should get edit" do
    get edit_ayuda_url(@ayuda)
    assert_response :success
  end

  test "should update ayuda" do
    patch ayuda_url(@ayuda), params: { ayuda: { departamento_id: @ayuda.departamento_id, nombre: @ayuda.nombre } }
    assert_redirected_to ayuda_url(@ayuda)
  end

  test "should destroy ayuda" do
    assert_difference('Ayuda.count', -1) do
      delete ayuda_url(@ayuda)
    end

    assert_redirected_to ayudas_url
  end
end
