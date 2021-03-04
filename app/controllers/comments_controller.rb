class CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        # comments = Comment.where(user_id: @user_id)
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
            render json: comment
        else
            render json: {error: comment.errors.messages}
        end
    end

    # def edit
    #     comment = Comment.find(params[:id])
    # end

    # def update
    #     comment = Comment.find(params[:id])
    #     comment.update(comment_params)

    #     if comment.valid?
    #         ***
    #     else
    #         render json: :edit
    #     end
    # end

    # def destroy
    #     comment = Comment.find(params[:id])
    #     comment.destroy
    #     ***
    # end

    private

    def comment_params
        params.require(:comment).permit(:title, :description, :rating, :user_id, :hangar_id)
    end
end