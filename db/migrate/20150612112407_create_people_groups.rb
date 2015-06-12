class CreatePeopleGroups < ActiveRecord::Migration
  def change
    create_table :people_groups do |t|
      t.references :person, index: true
      t.references :group, index: true
      t.datetime :date_begin
      t.datetime :date_end

      t.timestamps
    end
  end
end
