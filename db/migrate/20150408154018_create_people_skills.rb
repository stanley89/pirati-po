class CreatePeopleSkills < ActiveRecord::Migration
  def change
    create_table :people_skills do |t|
      t.references :people, index: true
      t.references :skill, index: true
      t.integer :favor
      t.integer :level
      t.string :note

      t.timestamps
    end
  end
end
