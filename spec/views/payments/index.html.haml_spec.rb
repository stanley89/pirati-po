require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :person => nil,
        :amount => "9.99",
        :ks => 1,
        :vs => 2,
        :ss => 3,
        :name => "Name",
        :message => "Message"
      ),
      Payment.create!(
        :person => nil,
        :amount => "9.99",
        :ks => 1,
        :vs => 2,
        :ss => 3,
        :name => "Name",
        :message => "Message"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
