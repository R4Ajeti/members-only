# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :logged_in_user, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    params = user_params
    params[:user_id] = current_user.id
    @post = Post.new(params) # Not the final implementation!
    if @post.save
      flash[:success] = 'New post created!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @posts =
      if logged_in?
        # Post.select(:title, :body, :user_id)
        # Post.includes(:users).where(posts.user_id = users.id)
        Post.joins('INNER JOIN users ON users.id = posts.user_id').select(
          :title,
          :body,
          :name
        )
      else
        Post.select(:title, :body)
      end
  end

  def user_params
    params.require(:post).permit(:title, :body)
  end
end
