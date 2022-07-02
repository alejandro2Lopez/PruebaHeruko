require "rails_helper"

RSpec.describe CambiosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cambios").to route_to("cambios#index")
    end

    it "routes to #new" do
      expect(get: "/cambios/new").to route_to("cambios#new")
    end

    it "routes to #show" do
      expect(get: "/cambios/1").to route_to("cambios#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cambios/1/edit").to route_to("cambios#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cambios").to route_to("cambios#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cambios/1").to route_to("cambios#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cambios/1").to route_to("cambios#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cambios/1").to route_to("cambios#destroy", id: "1")
    end
  end
end
