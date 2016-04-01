json.array!(@products) do |product|
  json.extract! product, :id, :name, :info, :price, :image, :status
  json.url product_url(product, format: :json)
end
