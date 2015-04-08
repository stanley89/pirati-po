class Person < ActiveRecord::Base
  has_many :people_skills, foreign_key: :person_id
  has_many :skills, through: :people_skills

  def not_my_skills
    my_skills_ids = skills.ids
    Skill.where.not(id:my_skills_ids)
  end
  
  def full_name
    dergee+" "+name+" "+surname+" "+degree2
  end
end
