require 'rails_helper'

RSpec.describe "people_groups/new", type: :view do
  before(:each) do
    assign(:people_group, PeopleGroup.new(
      :person => nil,
      :group => nil
    ))
  end

  it "renders new people_group form" do
    render

    assert_select "form[action=?][method=?]", people_groups_path, "post" do

      assert_select "input#people_group_person_id[name=?]", "people_group[person_id]"

      assert_select "input#people_group_group_id[name=?]", "people_group[group_id]"
    end
  end
end
