class PostsController < ApplicationController

before_action :find_post, only: [:show, :edit, :update, :destroy] ### add action

def index
	@posts = Post.all.order("created_at DESC")
end

def new
	@post = Post.new
end

def create
	@post = Post.new(post_params) ###create a new post and permit these attributes to be saved
	if @post.save
		redirect_to @post
	else
		render 'new'
	end
end

def show ###find post, id auto created, unique
end

def edit
end

def update
	if @post.update(post_params)
		redirect_to @post
	else
		render 'edit'
	end
end

def destroy
	@post.destroy
	redirect_to root_path
end

private

def find_post
	@post = Post.find(params[:id])
end

def post_params
	params.require(:post).permit(:title, :body, :author, :paragraph, :test, :blood_type, :cell_phone) ### security measures, strong parameters
end

end