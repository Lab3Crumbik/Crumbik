json.array!(@interactions) do |interaction|
  json.extract! interaction, :id, :content, :date, :product_id, :user_id
  json.url interaction_url(interaction, format: :json)
end
