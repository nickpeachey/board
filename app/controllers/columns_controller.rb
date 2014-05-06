class ColumnsController < ApplicationController
  respond_to :json
  # GET /columns
  # GET /columns.json
  def index
    @columns = Column.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @columns }
    end
  end

  # GET /columns/1
  # GET /columns/1.json
  def show
    @column = Column.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @column }
    end
  end

  # GET /columns/new
  # GET /columns/new.json
  def new
    @column = Column.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @column }
    end
  end

  # GET /columns/1/edit
  def edit
    @column = Column.find(params[:id])
  end

  # POST /columns
  # POST /columns.json
  def create
    @column = Column.new(column_params)

    respond_to do |format|
      if @column.save
        format.html { redirect_to @column, notice: 'Column was successfully created.' }
        format.json { render json: @column, status: :created, location: @column }
      else
        format.html { render action: "new" }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /columns/1
  # PATCH/PUT /columns/1.json
  def update
    @column = Column.find(params[:id])

    respond_to do |format|
      if @column.update_attributes(column_params)
        format.html { redirect_to @column, notice: 'Column was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columns/1
  # DELETE /columns/1.json
  def destroy
    @column = Column.find(params[:id])
    @column.destroy

    respond_to do |format|
      format.html { redirect_to columns_url }
      format.json { head :no_content }
    end
  end

  def board_data
    respond_with({
        'html' => 'hello world',
        'data' => []
    })
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def column_params
      params.require(:column).permit(:position, :title)
    end
end
