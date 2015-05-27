class PeopleSkill < ActiveRecord::Base
  belongs_to :person
  belongs_to :skill

  validates_presence_of :level
  validates :level, :inclusion => {:in => [1,2]}
  validates_presence_of :favor
  validates :favor, :inclusion => {:in => [1,2]}
end
