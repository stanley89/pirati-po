json.array!(@people_skills) do |people_skill|
  json.extract! people_skill, :id, :people_id_id, :skill_id_id, :favor, :level, :note
  json.url people_skill_url(people_skill, format: :json)
end
