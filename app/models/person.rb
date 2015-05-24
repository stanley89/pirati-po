class Person < ActiveRecord::Base
  has_many :people_skills, foreign_key: :person_id
  has_many :skills, through: :people_skills

  validates_presence_of :name, :message => "Nemas jmeno"


  def not_my_skills
    my_skills_ids = skills.ids
    Skill.where.not(id:my_skills_ids)
  end
  
  def full_name
    "#{degree} #{name} #{surname} #{degree2}"
  end
end
