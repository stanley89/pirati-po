require 'rails_helper'

RSpec.describe "functions/edit", type: :view do
  before(:each) do
    @function = assign(:function, Function.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit function form" do
    render

    assert_select "form[action=?][method=?]", function_path(@function), "post" do

      assert_select "input#function_name[name=?]", "function[name]"
    end
  end
end
