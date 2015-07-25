json.array!(@towns) do |town|
  json.extract! town, :id, :name, :sqft, :rooms, :buit_year, :cost, :address
  json.url town_url(town, format: :json)
end
