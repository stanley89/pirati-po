class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :parent_id
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
