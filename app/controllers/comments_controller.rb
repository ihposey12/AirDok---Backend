class CommentsController < ApplicationController
    def index
        comments = Comment.where(user_id: @user_id)
        render json: comments, status: 200
    end
    
    def new
        comment = Comment.new
        render json: comment.id
    end

    # def create
    #     comment = Comment.new(comment_params)
        
    #     if comment.valid?
    #         comment.save
    #         
    #     else
    #         render json: :new
    #     end
    # end

    def show
        comment = Comment.find(params[:id])
    end

    def edit
        comment = Comment.find(params[:id])
    end

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
        params.require(:comment).permit(:title, :description, :rating)
    end
end