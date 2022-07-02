require 'rails_helper'

RSpec.describe "cambios/index", type: :view do
  before(:each) do
    assign(:cambios, [
      Cambio.create!(
        name: "Name"
      ),
      Cambio.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of cambios" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
