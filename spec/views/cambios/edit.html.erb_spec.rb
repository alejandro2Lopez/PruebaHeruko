require 'rails_helper'

RSpec.describe "cambios/edit", type: :view do
  before(:each) do
    @cambio = assign(:cambio, Cambio.create!(
      name: "MyString"
    ))
  end

  it "renders the edit cambio form" do
    render

    assert_select "form[action=?][method=?]", cambio_path(@cambio), "post" do

      assert_select "input[name=?]", "cambio[name]"
    end
  end
end
