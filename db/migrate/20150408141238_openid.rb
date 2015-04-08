class Openid < ActiveRecord::Migration
  def change
    add_column :users, :openid_identifier, :string
  end
end
