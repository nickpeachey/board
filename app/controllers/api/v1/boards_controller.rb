module Api
  module V1
    class BoardsController < ApplicationController
      skip_before_filter :verfiy_authenticity_token
      respond_to :json


      def index
        respond_with(SprintBoard.all)
      end
    end
  end
end