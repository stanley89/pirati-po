class PeopleSkill < ActiveRecord::Base
  belongs_to :person
  belongs_to :skill

  validates_presence_of :level
  validates :level, :inclusion => {:in => [1,2]}
end
