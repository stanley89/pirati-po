require 'rails_helper'

RSpec.describe "people_groups/edit", type: :view do
  before(:each) do
    @people_group = assign(:people_group, PeopleGroup.create!(
      :person => nil,
      :group => nil
    ))
  end

  it "renders the edit people_group form" do
    render

    assert_select "form[action=?][method=?]", people_group_path(@people_group), "post" do

      assert_select "input#people_group_person_id[name=?]", "people_group[person_id]"

      assert_select "input#people_group_group_id[name=?]", "people_group[group_id]"
    end
  end
end
