require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

<<<<<<< HEAD:spec/requests/clients_spec.rb
RSpec.describe "/clients", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Client. As you add validations to Client, be sure to
=======
RSpec.describe "/users", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
      Client.create! valid_attributes
      get clients_url
=======
      User.create! valid_attributes
      get users_url
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
      client = Client.create! valid_attributes
      get client_url(client)
=======
      user = User.create! valid_attributes
      get user_url(user)
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
      get new_client_url
=======
      get new_user_url
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
      client = Client.create! valid_attributes
      get edit_client_url(client)
=======
      user = User.create! valid_attributes
      get edit_user_url(user)
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
      it "creates a new Client" do
        expect {
          post clients_url, params: { client: valid_attributes }
        }.to change(Client, :count).by(1)
      end

      it "redirects to the created client" do
        post clients_url, params: { client: valid_attributes }
        expect(response).to redirect_to(client_url(Client.last))
=======
      it "creates a new User" do
        expect {
          post users_url, params: { user: valid_attributes }
        }.to change(User, :count).by(1)
      end

      it "redirects to the created user" do
        post users_url, params: { user: valid_attributes }
        expect(response).to redirect_to(user_url(User.last))
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
      end
    end

    context "with invalid parameters" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
      it "does not create a new Client" do
        expect {
          post clients_url, params: { client: invalid_attributes }
        }.to change(Client, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post clients_url, params: { client: invalid_attributes }
=======
      it "does not create a new User" do
        expect {
          post users_url, params: { user: invalid_attributes }
        }.to change(User, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post users_url, params: { user: invalid_attributes }
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

<<<<<<< HEAD:spec/requests/clients_spec.rb
      it "updates the requested client" do
        client = Client.create! valid_attributes
        patch client_url(client), params: { client: new_attributes }
        client.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the client" do
        client = Client.create! valid_attributes
        patch client_url(client), params: { client: new_attributes }
        client.reload
        expect(response).to redirect_to(client_url(client))
=======
      it "updates the requested user" do
        user = User.create! valid_attributes
        patch user_url(user), params: { user: new_attributes }
        user.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the user" do
        user = User.create! valid_attributes
        patch user_url(user), params: { user: new_attributes }
        user.reload
        expect(response).to redirect_to(user_url(user))
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
        client = Client.create! valid_attributes
        patch client_url(client), params: { client: invalid_attributes }
=======
        user = User.create! valid_attributes
        patch user_url(user), params: { user: invalid_attributes }
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
<<<<<<< HEAD:spec/requests/clients_spec.rb
    it "destroys the requested client" do
      client = Client.create! valid_attributes
      expect {
        delete client_url(client)
      }.to change(Client, :count).by(-1)
    end

    it "redirects to the clients list" do
      client = Client.create! valid_attributes
      delete client_url(client)
      expect(response).to redirect_to(clients_url)
=======
    it "destroys the requested user" do
      user = User.create! valid_attributes
      expect {
        delete user_url(user)
      }.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      user = User.create! valid_attributes
      delete user_url(user)
      expect(response).to redirect_to(users_url)
>>>>>>> feature/JPR_B96105:spec/requests/users_spec.rb
    end
  end
end
