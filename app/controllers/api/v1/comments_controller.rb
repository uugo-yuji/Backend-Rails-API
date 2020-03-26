module Api
  module V1
    class CommentsController < ApplicationController
      before_action :set_comment, only: [:show]

      def index
        comment = Comment.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: comment }
      end

      def show
        render json: { status: 'SUCCESS', message: 'Loaded the post', data: @comment }
      end

      def create
        post = Post.find(params[:post_id])
        comment = post.comments.build(comment_params)
        if comment.save
          render json: { status: 'SUCCESS', data: comment }
        else
          render json: { status: 'ERROR', data: comment.errors }
        end 
      end 

      private

      def comment_params
        params.permit(:content)
      end

      def set_comment
        @comment = Comment.find(params[:id])
      end

    end
  end
end