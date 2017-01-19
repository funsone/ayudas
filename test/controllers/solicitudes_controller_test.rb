require 'test_helper'

class SolicitudesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud = solicitudes(:one)
  end

  test "should get index" do
    get solicitudes_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_url
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post solicitudes_url, params: { solicitud: { ayuda_id: @solicitud.ayuda_id, descripcion: @solicitud.descripcion, relacion_id: @solicitud.relacion_id, status: @solicitud.status } }
    end

    assert_redirected_to solicitud_url(Solicitud.last)
  end

  test "should show solicitud" do
    get solicitud_url(@solicitud)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_url(@solicitud)
    assert_response :success
  end

  test "should update solicitud" do
    patch solicitud_url(@solicitud), params: { solicitud: { ayuda_id: @solicitud.ayuda_id, descripcion: @solicitud.descripcion, relacion_id: @solicitud.relacion_id, status: @solicitud.status } }
    assert_redirected_to solicitud_url(@solicitud)
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete solicitud_url(@solicitud)
    end

    assert_redirected_to solicitudes_url
  end
end
