class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.boolean :ask

      t.timestamps
    end
  end
end
