require "rails_helper"

RSpec.describe LicenciaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/licencia").to route_to("licencia#index")
    end

    it "routes to #new" do
      expect(get: "/licencia/new").to route_to("licencia#new")
    end

    it "routes to #show" do
      expect(get: "/licencia/1").to route_to("licencia#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/licencia/1/edit").to route_to("licencia#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/licencia").to route_to("licencia#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/licencia/1").to route_to("licencia#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/licencia/1").to route_to("licencia#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/licencia/1").to route_to("licencia#destroy", id: "1")
    end
  end
end
