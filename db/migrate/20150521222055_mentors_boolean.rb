class MentorsBoolean < ActiveRecord::Migration
  def change
    add_column :people, :is_mentor, :boolean
  end
end
