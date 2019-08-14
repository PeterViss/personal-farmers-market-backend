class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        render json: comment.to_json(comment_show)
    end 

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment.to_json(comment_show)
    end 

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end 

private 
    def comment_params
        params.require(:comment).permit(:content, :user_id, :post_id)
    end 
end
