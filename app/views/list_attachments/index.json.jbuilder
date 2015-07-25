json.array!(@list_attachments) do |list_attachment|
  json.extract! list_attachment, :id, :list_id, :image
  json.url list_attachment_url(list_attachment, format: :json)
end
