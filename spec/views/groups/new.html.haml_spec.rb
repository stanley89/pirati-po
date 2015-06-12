require 'rails_helper'

RSpec.describe "groups/new", type: :view do
  before(:each) do
    assign(:group, Group.new(
      :name => "MyString",
      :area => nil,
      :function => nil,
      :phpbb_id => 1
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_name[name=?]", "group[name]"

      assert_select "input#group_area_id[name=?]", "group[area_id]"

      assert_select "input#group_function_id[name=?]", "group[function_id]"

      assert_select "input#group_phpbb_id[name=?]", "group[phpbb_id]"
    end
  end
end
