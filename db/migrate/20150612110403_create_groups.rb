class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :area, index: true
      t.references :function, index: true
      t.integer :phpbb_id

      t.timestamps
    end
  end
end
