json.array!(@hints) do |hint|
  json.extract! hint, :id, :tip, :tutor_id
  json.url hint_url(hint, format: :json)
end
