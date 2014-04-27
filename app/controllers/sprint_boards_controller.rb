class SprintBoardsController < ApplicationController
  #before_action :set_sprint_board_model, only: [:show, :edit, :update, :destroy]
before_filter :set_sprint_board_model, only: [:show, :destroy]


  def index
    @sprint_boards = SprintBoard.all
    respond_to do |format|
      format.html
    end
  end

  def new
    @sprint_board = SprintBoard.new
  end

  def show
  end

  # GET /testmodels/1/edit
  def edit
    @sprint_board = SprintBoard.find(params[:id])
  end

  def create
    @sprint_board = SprintBoard.new(sprint_board_model_params)

    respond_to do |format|
      if @sprint_board.save
        format.html { redirect_to @sprint_board, notice: 'Sprint Board was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_board }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_board.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @sprint_board = SprintBoard.find(params[:id])

    respond_to do |format|
      if @sprint_board.update_attributes(params[:sprint_board])
        format.html { redirect_to @sprint_board, notice: 'Testtemplate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sprint_board.errors, status: :unprocessable_entity }
      end
    end
  end

  def visualize
    @message = "visualize to be implemented"
  end

  def destroy
    @sprint_board.destroy
    respond_to do |format|
      format.html { redirect_to sprint_boards_url }
      format.json { head :no_content }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_sprint_board_model
    @sprint_board = SprintBoard.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sprint_board_model_params
    params.require(:sprint_board).permit(:icon, :position, :summary, :title)
  end
end
