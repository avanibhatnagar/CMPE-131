class CommentsController < ApplicationController
	def create
		@post=Post.find(params[:post_id])
        @comment = @post.comments.build(params[:comment].permit(:text, :body))
    @comment.save
    redirect_to post_path(@post)
	end
end
