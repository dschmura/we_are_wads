require "rails_helper"

RSpec.describe TwitadvicesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/twitadvices").to route_to("twitadvices#index")
    end

    it "routes to #new" do
      expect(get: "/twitadvices/new").to route_to("twitadvices#new")
    end

    it "routes to #show" do
      expect(get: "/twitadvices/1").to route_to("twitadvices#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/twitadvices/1/edit").to route_to("twitadvices#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/twitadvices").to route_to("twitadvices#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/twitadvices/1").to route_to("twitadvices#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/twitadvices/1").to route_to("twitadvices#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/twitadvices/1").to route_to("twitadvices#destroy", id: "1")
    end
  end
end
