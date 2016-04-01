json.array!(@countries) do |country|
  json.extract! country, :id, :name, :status
  json.url country_url(country, format: :json)
end
