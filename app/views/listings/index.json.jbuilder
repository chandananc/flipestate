json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :sqft, :rooms, :built_year, :cost
  json.url listing_url(listing, format: :json)
end
