class AddColumnsToPerson < ActiveRecord::Migration
  def change
    add_column :people, :member_since, :datetime
    add_column :people, :contact_street, :string
    add_column :people, :contact_town, :string
    add_column :people, :contact_zip, :string
    add_column :people, :citizenship, :string
  end
end
