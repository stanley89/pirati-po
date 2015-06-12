require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :person => nil,
      :amount => "9.99",
      :ks => 1,
      :vs => 1,
      :ss => 1,
      :name => "MyString",
      :message => "MyString"
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_person_id[name=?]", "payment[person_id]"

      assert_select "input#payment_amount[name=?]", "payment[amount]"

      assert_select "input#payment_ks[name=?]", "payment[ks]"

      assert_select "input#payment_vs[name=?]", "payment[vs]"

      assert_select "input#payment_ss[name=?]", "payment[ss]"

      assert_select "input#payment_name[name=?]", "payment[name]"

      assert_select "input#payment_message[name=?]", "payment[message]"
    end
  end
end
