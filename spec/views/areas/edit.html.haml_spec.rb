require 'rails_helper'

RSpec.describe "areas/edit", :type => :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :parent_id => 1,
      :name => "MyString",
      :note => "MyString"
    ))
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do

      assert_select "input#area_parent_id[name=?]", "area[parent_id]"

      assert_select "input#area_name[name=?]", "area[name]"

      assert_select "input#area_note[name=?]", "area[note]"
    end
  end
end
