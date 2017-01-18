require 'test_helper'

class SolicitantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitante = solicitantes(:one)
  end

  test "should get index" do
    get solicitantes_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitante_url
    assert_response :success
  end

  test "should create solicitante" do
    assert_difference('Solicitante.count') do
      post solicitantes_url, params: { solicitante: { apellidos: @solicitante.apellidos, carga_familiar: @solicitante.carga_familiar, cedula: @solicitante.cedula, correo: @solicitante.correo, direccion: @solicitante.direccion, empresa: @solicitante.empresa, estado_civil: @solicitante.estado_civil, fecha_de_nacimiento: @solicitante.fecha_de_nacimiento, grado_de_instruccion: @solicitante.grado_de_instruccion, ingreso_mensual: @solicitante.ingreso_mensual, lugar_de_nacimiento: @solicitante.lugar_de_nacimiento, municipios: @solicitante.municipios, nombres: @solicitante.nombres, obs_ingreso: @solicitante.obs_ingreso, obs_instruccion: @solicitante.obs_instruccion, oficio: @solicitante.oficio, sexo: @solicitante.sexo, telefono_fijo: @solicitante.telefono_fijo, telefono_movil: @solicitante.telefono_movil, tipo_cedula: @solicitante.tipo_cedula } }
    end

    assert_redirected_to solicitante_url(Solicitante.last)
  end

  test "should show solicitante" do
    get solicitante_url(@solicitante)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitante_url(@solicitante)
    assert_response :success
  end

  test "should update solicitante" do
    patch solicitante_url(@solicitante), params: { solicitante: { apellidos: @solicitante.apellidos, carga_familiar: @solicitante.carga_familiar, cedula: @solicitante.cedula, correo: @solicitante.correo, direccion: @solicitante.direccion, empresa: @solicitante.empresa, estado_civil: @solicitante.estado_civil, fecha_de_nacimiento: @solicitante.fecha_de_nacimiento, grado_de_instruccion: @solicitante.grado_de_instruccion, ingreso_mensual: @solicitante.ingreso_mensual, lugar_de_nacimiento: @solicitante.lugar_de_nacimiento, municipios: @solicitante.municipios, nombres: @solicitante.nombres, obs_ingreso: @solicitante.obs_ingreso, obs_instruccion: @solicitante.obs_instruccion, oficio: @solicitante.oficio, sexo: @solicitante.sexo, telefono_fijo: @solicitante.telefono_fijo, telefono_movil: @solicitante.telefono_movil, tipo_cedula: @solicitante.tipo_cedula } }
    assert_redirected_to solicitante_url(@solicitante)
  end

  test "should destroy solicitante" do
    assert_difference('Solicitante.count', -1) do
      delete solicitante_url(@solicitante)
    end

    assert_redirected_to solicitantes_url
  end
end
