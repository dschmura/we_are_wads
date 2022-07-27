require "rails_helper"

RSpec.describe SiteUsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/site_users").to route_to("site_users#index")
    end

    it "routes to #new" do
      expect(get: "/site_users/new").to route_to("site_users#new")
    end

    it "routes to #show" do
      expect(get: "/site_users/1").to route_to("site_users#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/site_users/1/edit").to route_to("site_users#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/site_users").to route_to("site_users#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/site_users/1").to route_to("site_users#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/site_users/1").to route_to("site_users#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/site_users/1").to route_to("site_users#destroy", id: "1")
    end
  end
end
