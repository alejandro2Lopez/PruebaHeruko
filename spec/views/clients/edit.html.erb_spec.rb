require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      name: "MyString",
      last_name: "MyString",
      password: "MyString",
      email: "MyString",
      adress: "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[last_name]"

      assert_select "input[name=?]", "client[password]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[adress]"
    end
  end
end
