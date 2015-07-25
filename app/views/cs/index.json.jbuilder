json.array!(@cs) do |c|
  json.extract! c, :id, :name
  json.url c_url(c, format: :json)
end
