json.array!(@town_attachments) do |town_attachment|
  json.extract! town_attachment, :id, :town_id, :image
  json.url town_attachment_url(town_attachment, format: :json)
end
