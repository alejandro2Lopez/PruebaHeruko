require 'rails_helper'

RSpec.describe "cambios/new", type: :view do
  before(:each) do
    assign(:cambio, Cambio.new(
      name: "MyString"
    ))
  end

  it "renders new cambio form" do
    render

    assert_select "form[action=?][method=?]", cambios_path, "post" do

      assert_select "input[name=?]", "cambio[name]"
    end
  end
end
