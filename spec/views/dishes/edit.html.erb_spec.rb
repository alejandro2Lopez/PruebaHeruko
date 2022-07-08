require 'rails_helper'

RSpec.describe "dishes/edit", type: :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
      name: "MyString",
      description: "MyString",
      cost: "",
      isdisable: false
    ))
  end

  it "renders the edit dish form" do
    render

    assert_select "form[action=?][method=?]", dish_path(@dish), "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "input[name=?]", "dish[description]"

      assert_select "input[name=?]", "dish[cost]"

      assert_select "input[name=?]", "dish[isdisable]"
    end
  end
end
