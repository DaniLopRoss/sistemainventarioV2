require "rails_helper"

RSpec.describe InsumosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/insumos").to route_to("insumos#index")
    end

    it "routes to #new" do
      expect(get: "/insumos/new").to route_to("insumos#new")
    end

    it "routes to #show" do
      expect(get: "/insumos/1").to route_to("insumos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/insumos/1/edit").to route_to("insumos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/insumos").to route_to("insumos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/insumos/1").to route_to("insumos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/insumos/1").to route_to("insumos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/insumos/1").to route_to("insumos#destroy", id: "1")
    end
  end
end
