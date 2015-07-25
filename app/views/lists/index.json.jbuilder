json.array!(@lists) do |list|
  json.extract! list, :id, :name, :sqft, :rooms, :built_year, :cost, :address
  json.url list_url(list, format: :json)
end
