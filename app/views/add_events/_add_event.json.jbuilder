json.extract! add_event, :id, :nome_do_event, :local_do_evento, :data_do_evento, :hora_do_event, :descricao_do_evento, :slug, :created_at, :updated_at
json.url add_event_url(add_event, format: :json)