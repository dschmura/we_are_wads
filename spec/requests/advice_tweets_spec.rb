require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/advice_tweets", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # AdviceTweet. As you add validations to AdviceTweet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      AdviceTweet.create! valid_attributes
      get advice_tweets_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      advice_tweet = AdviceTweet.create! valid_attributes
      get advice_tweet_url(advice_tweet)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_advice_tweet_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      advice_tweet = AdviceTweet.create! valid_attributes
      get edit_advice_tweet_url(advice_tweet)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AdviceTweet" do
        expect {
          post advice_tweets_url, params: { advice_tweet: valid_attributes }
        }.to change(AdviceTweet, :count).by(1)
      end

      it "redirects to the created advice_tweet" do
        post advice_tweets_url, params: { advice_tweet: valid_attributes }
        expect(response).to redirect_to(advice_tweet_url(AdviceTweet.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AdviceTweet" do
        expect {
          post advice_tweets_url, params: { advice_tweet: invalid_attributes }
        }.to change(AdviceTweet, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post advice_tweets_url, params: { advice_tweet: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested advice_tweet" do
        advice_tweet = AdviceTweet.create! valid_attributes
        patch advice_tweet_url(advice_tweet), params: { advice_tweet: new_attributes }
        advice_tweet.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the advice_tweet" do
        advice_tweet = AdviceTweet.create! valid_attributes
        patch advice_tweet_url(advice_tweet), params: { advice_tweet: new_attributes }
        advice_tweet.reload
        expect(response).to redirect_to(advice_tweet_url(advice_tweet))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        advice_tweet = AdviceTweet.create! valid_attributes
        patch advice_tweet_url(advice_tweet), params: { advice_tweet: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested advice_tweet" do
      advice_tweet = AdviceTweet.create! valid_attributes
      expect {
        delete advice_tweet_url(advice_tweet)
      }.to change(AdviceTweet, :count).by(-1)
    end

    it "redirects to the advice_tweets list" do
      advice_tweet = AdviceTweet.create! valid_attributes
      delete advice_tweet_url(advice_tweet)
      expect(response).to redirect_to(advice_tweets_url)
    end
  end
end