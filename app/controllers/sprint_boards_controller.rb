class SprintBoardsController < ApplicationController
  def index

    @sprint_boards = SprintBoard.all

    respond_to do |format|
      format.html
    end

  end
end
