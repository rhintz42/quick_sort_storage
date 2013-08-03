json.array!(@nodes) do |node|
  json.extract! node, :title, :description, :picture, :url, :is_in_storage, :is_borrowable, :is_sellable
  json.url node_url(node, format: :json)
end
