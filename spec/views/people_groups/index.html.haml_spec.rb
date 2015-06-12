require 'rails_helper'

RSpec.describe "people_groups/index", type: :view do
  before(:each) do
    assign(:people_groups, [
      PeopleGroup.create!(
        :person => nil,
        :group => nil
      ),
      PeopleGroup.create!(
        :person => nil,
        :group => nil
      )
    ])
  end

  it "renders a list of people_groups" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
