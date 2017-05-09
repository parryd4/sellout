class CommentsController < ApplicationController

    def create
#      Comment.create(content: params[:comment][:content], art_id: params[:comment][:art_id], user_id: 1)
      Comment.create(comment_params)
      redirect_to (art_path params[:comment][:art_id])
    end

    def destroy
      art = Comment.find(params[:id]).art_id
      Comment.find(params[:id]).destroy
      redirect_to art_path(art)
    end

    private

    def comment_params
      params.require(:comment).permit(:content, :art_id, :user_id)
    end
end
