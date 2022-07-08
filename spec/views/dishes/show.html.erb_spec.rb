require 'rails_helper'

RSpec.describe "dishes/show", type: :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
      name: "Name",
      description: "Description",
      cost: "",
      isdisable: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
