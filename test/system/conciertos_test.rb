require "application_system_test_case"

class ConciertosTest < ApplicationSystemTestCase
  setup do
    @concierto = conciertos(:one)
  end

  test "visiting the index" do
    visit conciertos_url
    assert_selector "h1", text: "Conciertos"
  end

  test "should create concierto" do
    visit conciertos_url
    click_on "New concierto"

    fill_in "Asistentes", with: @concierto.asistentes
    fill_in "Fecha", with: @concierto.fecha
    fill_in "Group", with: @concierto.group_id
    fill_in "Lugar", with: @concierto.lugar
    click_on "Create Concierto"

    assert_text "Concierto was successfully created"
    click_on "Back"
  end

  test "should update Concierto" do
    visit concierto_url(@concierto)
    click_on "Edit this concierto", match: :first

    fill_in "Asistentes", with: @concierto.asistentes
    fill_in "Fecha", with: @concierto.fecha
    fill_in "Group", with: @concierto.group_id
    fill_in "Lugar", with: @concierto.lugar
    click_on "Update Concierto"

    assert_text "Concierto was successfully updated"
    click_on "Back"
  end

  test "should destroy Concierto" do
    visit concierto_url(@concierto)
    click_on "Destroy this concierto", match: :first

    assert_text "Concierto was successfully destroyed"
  end
end
