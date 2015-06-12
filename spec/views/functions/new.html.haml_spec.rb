require 'rails_helper'

RSpec.describe "functions/new", type: :view do
  before(:each) do
    assign(:function, Function.new(
      :name => "MyString"
    ))
  end

  it "renders new function form" do
    render

    assert_select "form[action=?][method=?]", functions_path, "post" do

      assert_select "input#function_name[name=?]", "function[name]"
    end
  end
end
