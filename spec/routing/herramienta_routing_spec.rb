require "rails_helper"

RSpec.describe HerramientaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herramienta").to route_to("herramienta#index")
    end

    it "routes to #new" do
      expect(get: "/herramienta/new").to route_to("herramienta#new")
    end

    it "routes to #show" do
      expect(get: "/herramienta/1").to route_to("herramienta#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/herramienta/1/edit").to route_to("herramienta#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herramienta").to route_to("herramienta#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herramienta/1").to route_to("herramienta#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herramienta/1").to route_to("herramienta#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herramienta/1").to route_to("herramienta#destroy", id: "1")
    end
  end
end
