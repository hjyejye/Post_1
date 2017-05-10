class CommentsController < ApplicationController
    def create
    comment = Comment.new
    comment.content = params[:comment_content]
    comment.post_id = params[:post_id]
    comment.save
    
    redirect_to :back
    end
end
