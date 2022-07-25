require "test_helper"

class ExpedientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expedient = expedients(:one)
  end

  test "should get index" do
    get expedients_url
    assert_response :success
  end

  test "should get new" do
    get new_expedient_url
    assert_response :success
  end

  test "should create expedient" do
    assert_difference("Expedient.count") do
      post expedients_url, params: { expedient: { apellido_solicitante: @expedient.apellido_solicitante, cantidad_solicitada: @expedient.cantidad_solicitada, edad: @expedient.edad, email: @expedient.email, expediente_status_id: @expedient.expediente_status_id, fecha_nacimiento: @expedient.fecha_nacimiento, identificador_unico: @expedient.identificador_unico, nombre_solicitante: @expedient.nombre_solicitante, tipo_persona: @expedient.tipo_persona, tipo_solicitud_id: @expedient.tipo_solicitud_id } }
    end

    assert_redirected_to expedient_url(Expedient.last)
  end

  test "should show expedient" do
    get expedient_url(@expedient)
    assert_response :success
  end

  test "should get edit" do
    get edit_expedient_url(@expedient)
    assert_response :success
  end

  test "should update expedient" do
    patch expedient_url(@expedient), params: { expedient: { apellido_solicitante: @expedient.apellido_solicitante, cantidad_solicitada: @expedient.cantidad_solicitada, edad: @expedient.edad, email: @expedient.email, expediente_status_id: @expedient.expediente_status_id, fecha_nacimiento: @expedient.fecha_nacimiento, identificador_unico: @expedient.identificador_unico, nombre_solicitante: @expedient.nombre_solicitante, tipo_persona: @expedient.tipo_persona, tipo_solicitud_id: @expedient.tipo_solicitud_id } }
    assert_redirected_to expedient_url(@expedient)
  end

  test "should destroy expedient" do
    assert_difference("Expedient.count", -1) do
      delete expedient_url(@expedient)
    end

    assert_redirected_to expedients_url
  end
end
