class PostsController < ApplicationController

	before_action :find_post, only [:show, :edit, :update, :destroy] ###find_post only on the following 
	
	def index
		@posts = Post.all.order("created_at DESC")
	end

	def new
	  @post = Post.new
	end

	def create
	  @post = Post.new(post_params) ###create a new post and permit these attributes to be saved
	    if @post.save                               ### if user is successful save
	  redirect_to @post                        ### redirect to post get posts#show
	    else                     
	  render 'new'                                 ### else land on new_post get posts#new 
	    end
	end

	def show ### call new post instance variable. use Post table, find id of post	
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
	 params.require(:post).permit(:title, :body) ### security measures, strong parameters    ### post table, permit attributes for crud
	end
end