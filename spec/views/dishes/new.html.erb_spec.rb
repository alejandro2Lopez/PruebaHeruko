require 'rails_helper'

RSpec.describe "dishes/new", type: :view do
  before(:each) do
    assign(:dish, Dish.new(
      name: "MyString",
      description: "MyString",
      cost: "",
      isdisable: false
    ))
  end

  it "renders new dish form" do
    render

    assert_select "form[action=?][method=?]", dishes_path, "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "input[name=?]", "dish[description]"

      assert_select "input[name=?]", "dish[cost]"

      assert_select "input[name=?]", "dish[isdisable]"
    end
  end
end
