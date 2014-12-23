json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :description, :category_id
  json.url entry_url(entry, format: :json)
end
