require 'rails_helper'

RSpec.describe "dishes/index", type: :view do
  before(:each) do
    assign(:dishes, [
      Dish.create!(
        name: "Name",
        description: "Description",
        cost: "",
        isdisable: false
      ),
      Dish.create!(
        name: "Name",
        description: "Description",
        cost: "",
        isdisable: false
      )
    ])
  end

  it "renders a list of dishes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
