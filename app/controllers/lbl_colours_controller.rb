class LblColoursController < ApplicationController
  # GET /lbl_colours
  # GET /lbl_colours.json
  def index
    @lbl_colours = LblColour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lbl_colours }
    end
  end

  # GET /lbl_colours/1
  # GET /lbl_colours/1.json
  def show
    @lbl_colour = LblColour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lbl_colour }
    end
  end

  # GET /lbl_colours/new
  # GET /lbl_colours/new.json
  def new
    @lbl_colour = LblColour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lbl_colour }
    end
  end

  # GET /lbl_colours/1/edit
  def edit
    @lbl_colour = LblColour.find(params[:id])
  end

  # POST /lbl_colours
  # POST /lbl_colours.json
  def create
    @lbl_colour = LblColour.new(lbl_colour_params)

    respond_to do |format|
      if @lbl_colour.save
        format.html { redirect_to @lbl_colour, notice: 'Lbl colour was successfully created.' }
        format.json { render json: @lbl_colour, status: :created, location: @lbl_colour }
      else
        format.html { render action: "new" }
        format.json { render json: @lbl_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lbl_colours/1
  # PATCH/PUT /lbl_colours/1.json
  def update
    @lbl_colour = LblColour.find(params[:id])

    respond_to do |format|
      if @lbl_colour.update_attributes(lbl_colour_params)
        format.html { redirect_to @lbl_colour, notice: 'Lbl colour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lbl_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lbl_colours/1
  # DELETE /lbl_colours/1.json
  def destroy
    @lbl_colour = LblColour.find(params[:id])
    @lbl_colour.destroy

    respond_to do |format|
      format.html { redirect_to lbl_colours_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def lbl_colour_params
      params.require(:lbl_colour).permit(:name, :css_colour)
    end
end
