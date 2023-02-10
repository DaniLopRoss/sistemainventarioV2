require "rails_helper"

RSpec.describe Equipo12sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/equipo12s").to route_to("equipo12s#index")
    end

    it "routes to #new" do
      expect(get: "/equipo12s/new").to route_to("equipo12s#new")
    end

    it "routes to #show" do
      expect(get: "/equipo12s/1").to route_to("equipo12s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/equipo12s/1/edit").to route_to("equipo12s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/equipo12s").to route_to("equipo12s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/equipo12s/1").to route_to("equipo12s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/equipo12s/1").to route_to("equipo12s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/equipo12s/1").to route_to("equipo12s#destroy", id: "1")
    end
  end
end
