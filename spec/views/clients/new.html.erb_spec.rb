require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      name: "MyString",
      last_name: "MyString",
      password: "MyString",
      email: "MyString",
      adress: "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[last_name]"

      assert_select "input[name=?]", "client[password]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[adress]"
    end
  end
end
