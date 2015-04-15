class Skill < ActiveRecord::Base
  has_many :people_skills
  has_many :people, through: :people_skills


  def not_my_people
    my_people_ids = people.ids
    Person.where.not(id:my_people_ids)
  end

end

