json.array!(@people_groups) do |people_group|
  json.extract! people_group, :id, :person_id, :group_id, :date_begin, :date_end
  json.url people_group_url(people_group, format: :json)
end
