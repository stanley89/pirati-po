require 'rails_helper'

RSpec.describe "people_skills/new", :type => :view do
  before(:each) do
    assign(:people_skill, PeopleSkill.new(
      :people_id => nil,
      :skill_id => nil,
      :favor => 1,
      :level => 1,
      :note => "MyString"
    ))
  end

  it "renders new people_skill form" do
    render

    assert_select "form[action=?][method=?]", people_skills_path, "post" do

      assert_select "input#people_skill_people_id_id[name=?]", "people_skill[people_id_id]"

      assert_select "input#people_skill_skill_id_id[name=?]", "people_skill[skill_id_id]"

      assert_select "input#people_skill_favor[name=?]", "people_skill[favor]"

      assert_select "input#people_skill_level[name=?]", "people_skill[level]"

      assert_select "input#people_skill_note[name=?]", "people_skill[note]"
    end
  end
end
