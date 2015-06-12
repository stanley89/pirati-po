require 'rails_helper'

RSpec.describe "functions/show", type: :view do
  before(:each) do
    @function = assign(:function, Function.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
