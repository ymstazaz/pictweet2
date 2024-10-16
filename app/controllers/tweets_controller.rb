class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to '/'
  end

  def destroy
    tweet = Tweet.find(params[:id])
    # このパラムスidはURLから引っ張ってくるもの。
    tweet.destroy
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  private # ↓プライベートメソッド（条件などの記載）
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end

  
  
end
