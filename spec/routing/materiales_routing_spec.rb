require "rails_helper"

RSpec.describe MaterialesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/materiales").to route_to("materiales#index")
    end

    it "routes to #new" do
      expect(get: "/materiales/new").to route_to("materiales#new")
    end

    it "routes to #show" do
      expect(get: "/materiales/1").to route_to("materiales#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/materiales/1/edit").to route_to("materiales#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/materiales").to route_to("materiales#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/materiales/1").to route_to("materiales#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/materiales/1").to route_to("materiales#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/materiales/1").to route_to("materiales#destroy", id: "1")
    end
  end
end
