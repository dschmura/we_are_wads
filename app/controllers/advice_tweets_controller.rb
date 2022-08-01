class AdviceTweetsController < ApplicationController
  before_action :set_user
  before_action :set_advice_tweet, only: %i[ show edit update destroy ]

  # GET /advice_tweets or /advice_tweets.json
  def index
    @advice_tweets = @user.advice_tweets
  end

  # GET /advice_tweets/1 or /advice_tweets/1.json
  def show
  end

  # GET /advice_tweets/new
  def new
    @advice_tweet = @user.advice_tweets.build
  end

  # GET /advice_tweets/1/edit
  def edit
  end

  # POST /advice_tweets or /advice_tweets.json
  def create
    @advice_tweet = @user.advice_tweets.new(advice_tweet_params)

    respond_to do |format|
      if @advice_tweet.save
        format.html { redirect_to user_advice_tweets_url(@advice_tweet), notice: "Advice tweet was successfully created." }
        format.json { render :show, status: :created, location: @advice_tweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advice_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advice_tweets/1 or /advice_tweets/1.json
  def update
    respond_to do |format|
      if @advice_tweet.update(advice_tweet_params)
        format.html { redirect_to user_advice_tweets_url(@advice_tweet), notice: "Advice tweet was successfully updated." }
        format.json { render :show, status: :ok, location: @advice_tweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advice_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advice_tweets/1 or /advice_tweets/1.json
  def destroy
    @advice_tweet.destroy

    respond_to do |format|
      format.html { redirect_to user_advice_tweets_url, notice: "Advice tweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advice_tweet
      @advice_tweet = @user.advice_tweets.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def advice_tweet_params
      params.require(:advice_tweet).permit(:title, :content)
    end
end
