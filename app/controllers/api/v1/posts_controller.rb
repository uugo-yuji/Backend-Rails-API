module Api
  module V1
    class PostsController < ApplicationController
      
      def index
        render json: {
          msg: 'Hello!!'
        }
      end
      
    end
  end
end
