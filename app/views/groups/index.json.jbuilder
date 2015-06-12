json.array!(@groups) do |group|
  json.extract! group, :id, :name, :area_id, :function_id, :phpbb_id
  json.url group_url(group, format: :json)
end
