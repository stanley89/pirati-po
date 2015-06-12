class Group < ActiveRecord::Base
  belongs_to :area
  belongs_to :function
end
