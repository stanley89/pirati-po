class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :person, index: true
      t.datetime :date
      t.decimal :amount
      t.integer :ks
      t.integer :vs
      t.integer :ss
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
