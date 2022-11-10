class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show destroy ]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
		@post = Post.find(params[:post_id])
	 	@comment = @post.comments.create(params[:comment].permit(:comment))
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

end
