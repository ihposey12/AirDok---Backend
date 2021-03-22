class CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        comments = Comment.all
        render json: comments, status: 200
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.new(comment_params)
        
        if comment.save
            hangar = Hangar.find(comment_params[:hangar_id])
            render json: {user: UserSerializer.new(@user), hangar: HangarSerializer.new(hangar)}
        else
            render json: {error: comment.errors.messages}
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        hangar = Hangar.find(comment.hangar_id)
        comment.destroy
        render json: {user: UserSerializer.new(@user), hangar: HangarSerializer.new(hangar)}
    end

    private

    def comment_params
        params.require(:comment).permit(:title, :description, :rating, :user_id, :hangar_id)
    end
end