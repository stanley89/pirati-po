require 'rails_helper'

RSpec.describe "people_skills/show", :type => :view do
  before(:each) do
    @people_skill = assign(:people_skill, PeopleSkill.create!(
      :people_id => nil,
      :skill_id => nil,
      :favor => 1,
      :level => 2,
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Note/)
  end
end
