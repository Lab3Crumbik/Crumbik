json.array!(@payments) do |payment|
  json.extract! payment, :id, :amount, :identification, :card_number, :expiration_month, :expiration_year, :security_code
  json.url payment_url(payment, format: :json)
end
