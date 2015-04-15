require 'rails_helper'

RSpec.describe "areas/new", :type => :view do
  before(:each) do
    assign(:area, Area.new(
      :parent_id => 1,
      :name => "MyString",
      :note => "MyString"
    ))
  end

  it "renders new area form" do
    render

    assert_select "form[action=?][method=?]", areas_path, "post" do

      assert_select "input#area_parent_id[name=?]", "area[parent_id]"

      assert_select "input#area_name[name=?]", "area[name]"

      assert_select "input#area_note[name=?]", "area[note]"
    end
  end
end
