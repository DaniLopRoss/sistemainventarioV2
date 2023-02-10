require "rails_helper"

RSpec.describe Departamento1sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/departamento1s").to route_to("departamento1s#index")
    end

    it "routes to #new" do
      expect(get: "/departamento1s/new").to route_to("departamento1s#new")
    end

    it "routes to #show" do
      expect(get: "/departamento1s/1").to route_to("departamento1s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/departamento1s/1/edit").to route_to("departamento1s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/departamento1s").to route_to("departamento1s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/departamento1s/1").to route_to("departamento1s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/departamento1s/1").to route_to("departamento1s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/departamento1s/1").to route_to("departamento1s#destroy", id: "1")
    end
  end
end
