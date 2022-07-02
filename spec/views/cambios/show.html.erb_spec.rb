require 'rails_helper'

RSpec.describe "cambios/show", type: :view do
  before(:each) do
    @cambio = assign(:cambio, Cambio.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
