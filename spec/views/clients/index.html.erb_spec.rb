require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        last_name: "Last Name",
        password: "Password",
        email: "Email",
        adress: "Adress"
      ),
      Client.create!(
        name: "Name",
        last_name: "Last Name",
        password: "Password",
        email: "Email",
        adress: "Adress"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Adress".to_s, count: 2
  end
end
