json.array!(@requests) do |request|
  json.extract! request, :id, :title, :description, :user_id, :department_id, :organization_id
  json.url request_url(request, format: :json)
end
