require "rails_helper"

RSpec.describe MantenimientosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mantenimientos").to route_to("mantenimientos#index")
    end

    it "routes to #new" do
      expect(get: "/mantenimientos/new").to route_to("mantenimientos#new")
    end

    it "routes to #show" do
      expect(get: "/mantenimientos/1").to route_to("mantenimientos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mantenimientos/1/edit").to route_to("mantenimientos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mantenimientos").to route_to("mantenimientos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mantenimientos/1").to route_to("mantenimientos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mantenimientos/1").to route_to("mantenimientos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mantenimientos/1").to route_to("mantenimientos#destroy", id: "1")
    end
  end
end
