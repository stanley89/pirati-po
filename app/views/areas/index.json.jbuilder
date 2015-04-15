json.array!(@areas) do |area|
  json.extract! area, :id, :parent_id, :name, :note
  json.url area_url(area, format: :json)
end
