json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :email, :slogan, :mission, :vision, :phone, :status
  json.url organization_url(organization, format: :json)
end
