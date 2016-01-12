require 'rails_helper'

RSpec.describe "memberships/show", type: :view do
  before(:each) do
    @membership = assign(:membership, Membership.create!(
      :user_id => 1,
      :voted => "Voted",
      :area_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Voted/)
    expect(rendered).to match(/2/)
  end
end
