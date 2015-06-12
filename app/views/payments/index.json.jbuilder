json.array!(@payments) do |payment|
  json.extract! payment, :id, :person_id, :date, :amount, :ks, :vs, :ss, :name, :message
  json.url payment_url(payment, format: :json)
end
