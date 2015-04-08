class RenamePeopleToPerson < ActiveRecord::Migration
  def change
    rename_column :people_skills, :people_id, :person_id
  end
end
