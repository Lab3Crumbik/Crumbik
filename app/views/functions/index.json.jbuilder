json.array!(@functions) do |function|
  json.extract! function, :id, :name, :info, :url, :father_id, :rol_id
  json.url function_url(function, format: :json)
end
