require "application_system_test_case"

class ServiciosTest < ApplicationSystemTestCase
  setup do
    @servicio = servicios(:one)
  end

  test "visiting the index" do
    visit servicios_url
    assert_selector "h1", text: "Servicios"
  end

  test "should create servicio" do
    visit servicios_url
    click_on "New servicio"

    fill_in "Estado", with: @servicio.estado
    fill_in "Fecha entrega", with: @servicio.fecha_entrega
    fill_in "Piezas", with: @servicio.piezas
    fill_in "Tipo", with: @servicio.tipo
    fill_in "Vehiculo", with: @servicio.vehiculo_id
    click_on "Create Servicio"

    assert_text "Servicio was successfully created"
    click_on "Back"
  end

  test "should update Servicio" do
    visit servicio_url(@servicio)
    click_on "Edit this servicio", match: :first

    fill_in "Estado", with: @servicio.estado
    fill_in "Fecha entrega", with: @servicio.fecha_entrega
    fill_in "Piezas", with: @servicio.piezas
    fill_in "Tipo", with: @servicio.tipo
    fill_in "Vehiculo", with: @servicio.vehiculo_id
    click_on "Update Servicio"

    assert_text "Servicio was successfully updated"
    click_on "Back"
  end

  test "should destroy Servicio" do
    visit servicio_url(@servicio)
    click_on "Destroy this servicio", match: :first

    assert_text "Servicio was successfully destroyed"
  end
end
