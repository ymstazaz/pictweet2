class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  #    @tweet = Tweet.find(params[:id]) という既存ツィートを引っ張ってくるのをまとめる
  #    プライベートにセットツィートが＠以下と同じであることを定義付けする。

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
    # tweet = Tweet.find(params[:id])←けす
    # このパラムスidはURLから引っ張ってくるもの。
    # 元の記事を引用。（引っ張ってくる）のの定型分↑
    tweet.destroy
    redirect_to root_path
    # ルートパスは初期画面。よく使う。
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    redirect_to root_path
  end

  def edit
    # @tweet = Tweet.find(params[:id])
  end

  def show
    # @tweet = Tweet.find(params[:id])
  end

  private # ↓プライベートメソッド（条件などの記載）
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
  
  
end
