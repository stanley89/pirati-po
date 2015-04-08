require 'rails_helper'

RSpec.describe "skills/index", :type => :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        :name => "Name",
        :ask => false
      ),
      Skill.create!(
        :name => "Name",
        :ask => false
      )
    ])
  end

  it "renders a list of skills" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
