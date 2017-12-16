class ErasersController < ApplicationController
  before_action :set_eraser, only: [:show, :edit, :update, :destroy]

  # GET /erasers
  # GET /erasers.json
  def index
    @erasers = Eraser.all
  end

  # GET /erasers/1
  # GET /erasers/1.json
  def show
  end

  # GET /erasers/new
  def new
    @eraser = Eraser.new
  end

  # GET /erasers/1/edit
  def edit
  end

  # POST /erasers
  # POST /erasers.json
  def create
    @eraser = Eraser.new(eraser_params)

    respond_to do |format|
      if @eraser.save
        format.html { redirect_to @eraser, notice: 'Eraser was successfully created.' }
        format.json { render :show, status: :created, location: @eraser }
      else
        format.html { render :new }
        format.json { render json: @eraser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /erasers/1
  # PATCH/PUT /erasers/1.json
  def update
    respond_to do |format|
      if @eraser.update(eraser_params)
        format.html { redirect_to @eraser, notice: 'Eraser was successfully updated.' }
        format.json { render :show, status: :ok, location: @eraser }
      else
        format.html { render :edit }
        format.json { render json: @eraser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /erasers/1
  # DELETE /erasers/1.json
  def destroy
    @eraser.destroy
    respond_to do |format|
      format.html { redirect_to erasers_url, notice: 'Eraser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eraser
      @eraser = Eraser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eraser_params
      params.require(:eraser).permit(:eraser_id, :description, :price)
    end
end
