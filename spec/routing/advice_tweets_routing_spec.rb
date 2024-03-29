require "rails_helper"

RSpec.describe AdviceTweetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/advice_tweets").to route_to("advice_tweets#index")
    end

    it "routes to #new" do
      expect(get: "/advice_tweets/new").to route_to("advice_tweets#new")
    end

    it "routes to #show" do
      expect(get: "/advice_tweets/1").to route_to("advice_tweets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/advice_tweets/1/edit").to route_to("advice_tweets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/advice_tweets").to route_to("advice_tweets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/advice_tweets/1").to route_to("advice_tweets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/advice_tweets/1").to route_to("advice_tweets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/advice_tweets/1").to route_to("advice_tweets#destroy", id: "1")
    end
  end
end
