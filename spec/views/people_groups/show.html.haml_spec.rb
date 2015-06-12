require 'rails_helper'

RSpec.describe "people_groups/show", type: :view do
  before(:each) do
    @people_group = assign(:people_group, PeopleGroup.create!(
      :person => nil,
      :group => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
