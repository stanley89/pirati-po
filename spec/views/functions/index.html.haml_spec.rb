require 'rails_helper'

RSpec.describe "functions/index", type: :view do
  before(:each) do
    assign(:functions, [
      Function.create!(
        :name => "Name"
      ),
      Function.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of functions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
