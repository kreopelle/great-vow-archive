require "rails_helper"

RSpec.describe DharmaTalksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dharma_talks").to route_to("dharma_talks#index")
    end

    it "routes to #new" do
      expect(get: "/dharma_talks/new").to route_to("dharma_talks#new")
    end

    it "routes to #show" do
      expect(get: "/dharma_talks/1").to route_to("dharma_talks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dharma_talks/1/edit").to route_to("dharma_talks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dharma_talks").to route_to("dharma_talks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dharma_talks/1").to route_to("dharma_talks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dharma_talks/1").to route_to("dharma_talks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dharma_talks/1").to route_to("dharma_talks#destroy", id: "1")
    end
  end
end
