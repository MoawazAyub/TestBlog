class CommentsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  	@comments = Post.find(params[:post_id]).comments
  	@id = params[:post_id]
  end

  def show
  	
  end

  def new
 
    #@post = Post.new
    @post = Post.find(params[:post_id])
    #@comment = @post.comments.new
    @comment = Comment.new

  end

  def destroy
  	
  end

  def edit
  	
  end

  def update
  	
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(post_params)
    if @comment.save
      redirect_to @comment
    else
      render 'new'
    end
  	
  end

   private

  def find_post
    @comment = Post.find(params[:post_id]).comments.find(params[:id])
    @id = params[:post_id]
  end

  def post_params
    params.require(:comment).permit(:comment_body, :commenter)
  end
end
