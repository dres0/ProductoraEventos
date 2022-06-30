require "test_helper"

class ConciertosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concierto = conciertos(:one)
  end

  test "should get index" do
    get conciertos_url
    assert_response :success
  end

  test "should get new" do
    get new_concierto_url
    assert_response :success
  end

  test "should create concierto" do
    assert_difference("Concierto.count") do
      post conciertos_url, params: { concierto: { asistentes: @concierto.asistentes, fecha: @concierto.fecha, group_id: @concierto.group_id, lugar: @concierto.lugar } }
    end

    assert_redirected_to concierto_url(Concierto.last)
  end

  test "should show concierto" do
    get concierto_url(@concierto)
    assert_response :success
  end

  test "should get edit" do
    get edit_concierto_url(@concierto)
    assert_response :success
  end

  test "should update concierto" do
    patch concierto_url(@concierto), params: { concierto: { asistentes: @concierto.asistentes, fecha: @concierto.fecha, group_id: @concierto.group_id, lugar: @concierto.lugar } }
    assert_redirected_to concierto_url(@concierto)
  end

  test "should destroy concierto" do
    assert_difference("Concierto.count", -1) do
      delete concierto_url(@concierto)
    end

    assert_redirected_to conciertos_url
  end
end
