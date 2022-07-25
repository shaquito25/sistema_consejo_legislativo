require "application_system_test_case"

class ExpedientsTest < ApplicationSystemTestCase
  setup do
    @expedient = expedients(:one)
  end

  test "visiting the index" do
    visit expedients_url
    assert_selector "h1", text: "Expedients"
  end

  test "should create expedient" do
    visit expedients_url
    click_on "New expedient"

    fill_in "Apellido solicitante", with: @expedient.apellido_solicitante
    fill_in "Cantidad solicitada", with: @expedient.cantidad_solicitada
    fill_in "Edad", with: @expedient.edad
    fill_in "Email", with: @expedient.email
    fill_in "Expediente status", with: @expedient.expediente_status_id
    fill_in "Fecha nacimiento", with: @expedient.fecha_nacimiento
    fill_in "Identificador unico", with: @expedient.identificador_unico
    fill_in "Nombre solicitante", with: @expedient.nombre_solicitante
    fill_in "Tipo persona", with: @expedient.tipo_persona
    fill_in "Tipo solicitud", with: @expedient.tipo_solicitud_id
    click_on "Create Expedient"

    assert_text "Expedient was successfully created"
    click_on "Back"
  end

  test "should update Expedient" do
    visit expedient_url(@expedient)
    click_on "Edit this expedient", match: :first

    fill_in "Apellido solicitante", with: @expedient.apellido_solicitante
    fill_in "Cantidad solicitada", with: @expedient.cantidad_solicitada
    fill_in "Edad", with: @expedient.edad
    fill_in "Email", with: @expedient.email
    fill_in "Expediente status", with: @expedient.expediente_status_id
    fill_in "Fecha nacimiento", with: @expedient.fecha_nacimiento
    fill_in "Identificador unico", with: @expedient.identificador_unico
    fill_in "Nombre solicitante", with: @expedient.nombre_solicitante
    fill_in "Tipo persona", with: @expedient.tipo_persona
    fill_in "Tipo solicitud", with: @expedient.tipo_solicitud_id
    click_on "Update Expedient"

    assert_text "Expedient was successfully updated"
    click_on "Back"
  end

  test "should destroy Expedient" do
    visit expedient_url(@expedient)
    click_on "Destroy this expedient", match: :first

    assert_text "Expedient was successfully destroyed"
  end
end
