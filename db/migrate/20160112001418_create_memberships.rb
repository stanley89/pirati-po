class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :person_id
      t.date :date_applied
      t.date :date_voted
      t.date :date_paid
      t.date :date_begin
      t.date :date_end
      t.string :voted
      t.integer :area_id

      t.timestamps
    end
    add_index :memberships, :person_id
    add_index :memberships, :area_id
  end
end
