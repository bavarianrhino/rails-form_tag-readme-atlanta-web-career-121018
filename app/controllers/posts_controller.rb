class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
    end

    def create
        # Never do below....long way of doing it.
        Post.create(title: params[:post][:title], description: params[:post][:description])
        redirect_to posts_path
    end

end
