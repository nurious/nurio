json.array!(@positions) do |position|
  json.extract! position, :id, :name, :department_id
  json.url position_url(position, format: :json)
end
