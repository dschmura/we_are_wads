require "rails_helper"

RSpec.describe QuirksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/quirks").to route_to("quirks#index")
    end

    it "routes to #new" do
      expect(get: "/quirks/new").to route_to("quirks#new")
    end

    it "routes to #show" do
      expect(get: "/quirks/1").to route_to("quirks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/quirks/1/edit").to route_to("quirks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/quirks").to route_to("quirks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/quirks/1").to route_to("quirks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/quirks/1").to route_to("quirks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/quirks/1").to route_to("quirks#destroy", id: "1")
    end
  end
end
