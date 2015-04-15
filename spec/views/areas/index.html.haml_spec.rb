require 'rails_helper'

RSpec.describe "areas/index", :type => :view do
  before(:each) do
    assign(:areas, [
      Area.create!(
        :parent_id => 1,
        :name => "Name",
        :note => "Note"
      ),
      Area.create!(
        :parent_id => 1,
        :name => "Name",
        :note => "Note"
      )
    ])
  end

  it "renders a list of areas" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
