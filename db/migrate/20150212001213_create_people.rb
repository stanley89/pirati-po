class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nick
      t.string :degree
      t.string :name
      t.string :surname
      t.string :degree2
      t.string :street
      t.string :town
      t.string :zip
      t.date :birth
      t.string :email
      t.string :phone
      t.string :jabber

      t.timestamps
    end
  end
end
