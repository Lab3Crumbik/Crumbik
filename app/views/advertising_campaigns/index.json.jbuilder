json.array!(@advertising_campaigns) do |advertising_campaign|
  json.extract! advertising_campaign, :id, :name, :info, :date, :image, :product_id
  json.url advertising_campaign_url(advertising_campaign, format: :json)
end
