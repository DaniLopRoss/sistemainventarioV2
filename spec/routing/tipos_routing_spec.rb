require "rails_helper"

RSpec.describe TiposController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tipos").to route_to("tipos#index")
    end

    it "routes to #new" do
      expect(get: "/tipos/new").to route_to("tipos#new")
    end

    it "routes to #show" do
      expect(get: "/tipos/1").to route_to("tipos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tipos/1/edit").to route_to("tipos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tipos").to route_to("tipos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tipos/1").to route_to("tipos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tipos/1").to route_to("tipos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tipos/1").to route_to("tipos#destroy", id: "1")
    end
  end
end
