require 'rails_helper'

RSpec.describe "areas/show", :type => :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :parent_id => 1,
      :name => "Name",
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Note/)
  end
end
