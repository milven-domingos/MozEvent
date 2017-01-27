require 'test_helper'

class AddEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_event = add_events(:one)
  end

  test "should get index" do
    get add_events_url
    assert_response :success
  end

  test "should get new" do
    get new_add_event_url
    assert_response :success
  end

  test "should create add_event" do
    assert_difference('AddEvent.count') do
      post add_events_url, params: { add_event: { data_do_evento: @add_event.data_do_evento, descricao_do_evento: @add_event.descricao_do_evento, hora_do_event: @add_event.hora_do_event, local_do_evento: @add_event.local_do_evento, nome_do_event: @add_event.nome_do_event, slug: @add_event.slug } }
    end

    assert_redirected_to add_event_url(AddEvent.last)
  end

  test "should show add_event" do
    get add_event_url(@add_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_event_url(@add_event)
    assert_response :success
  end

  test "should update add_event" do
    patch add_event_url(@add_event), params: { add_event: { data_do_evento: @add_event.data_do_evento, descricao_do_evento: @add_event.descricao_do_evento, hora_do_event: @add_event.hora_do_event, local_do_evento: @add_event.local_do_evento, nome_do_event: @add_event.nome_do_event, slug: @add_event.slug } }
    assert_redirected_to add_event_url(@add_event)
  end

  test "should destroy add_event" do
    assert_difference('AddEvent.count', -1) do
      delete add_event_url(@add_event)
    end

    assert_redirected_to add_events_url
  end
end
