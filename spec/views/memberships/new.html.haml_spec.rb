require 'rails_helper'

RSpec.describe "memberships/new", type: :view do
  before(:each) do
    assign(:membership, Membership.new(
      :user_id => 1,
      :voted => "MyString",
      :area_id => 1
    ))
  end

  it "renders new membership form" do
    render

    assert_select "form[action=?][method=?]", memberships_path, "post" do

      assert_select "input#membership_user_id[name=?]", "membership[user_id]"

      assert_select "input#membership_voted[name=?]", "membership[voted]"

      assert_select "input#membership_area_id[name=?]", "membership[area_id]"
    end
  end
end
