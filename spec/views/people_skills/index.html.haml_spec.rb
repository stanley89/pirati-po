require 'rails_helper'

RSpec.describe "people_skills/index", :type => :view do
  before(:each) do
    assign(:people_skills, [
      PeopleSkill.create!(
        :people_id => nil,
        :skill_id => nil,
        :favor => 1,
        :level => 2,
        :note => "Note"
      ),
      PeopleSkill.create!(
        :people_id => nil,
        :skill_id => nil,
        :favor => 1,
        :level => 2,
        :note => "Note"
      )
    ])
  end

  it "renders a list of people_skills" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
