class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    # 記事一覧用
      @posts = Post.all
      # 最新記事用
      @new_posts = Post.all
      @author = Author.first

  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) # ストロングパラメータを引数に
    @post.save # saveをしてデータベースに保存する。
    redirect_to @post # showペ
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_post
    @post = Post.find(params[:id])
  end  

  def post_params
    params.require(:post).permit(:title, :body, :category)
   end
 end
