class PostsController < ApplicationController
def index
	@posts = Post.all(:select => "id , title , content", :order => "id desc")
	
end
def show
	@post = Post.find(params[:id])
end
def new
	@post = Post.new
end
def create
	@post = Post.new(params[:post])
	if @post.save
	redirect_to posts_index_path, :notice => "Your blog was saved"
	else
	render "new"
	end
end
def edit
end
def update
end
def destroy
end
def archive
	@posts = Post.all(:select => "id , title , content", :order => "id desc")
	
end

end
