class Mentors < ActiveRecord::Migration
  def change
    add_column :people, :mentor_id, :integer
    add_index :people, :mentor_id
  end
end
