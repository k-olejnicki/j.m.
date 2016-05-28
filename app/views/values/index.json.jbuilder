json.array!(@values) do |value|
  json.extract! value, :id, :price_in
  json.url value_url(value, format: :json)
end
