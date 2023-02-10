require "rails_helper"

RSpec.describe Area1sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/area1s").to route_to("area1s#index")
    end

    it "routes to #new" do
      expect(get: "/area1s/new").to route_to("area1s#new")
    end

    it "routes to #show" do
      expect(get: "/area1s/1").to route_to("area1s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/area1s/1/edit").to route_to("area1s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/area1s").to route_to("area1s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/area1s/1").to route_to("area1s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/area1s/1").to route_to("area1s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/area1s/1").to route_to("area1s#destroy", id: "1")
    end
  end
end
