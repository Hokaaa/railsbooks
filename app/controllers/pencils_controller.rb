class PencilsController < ApplicationController
  before_action :set_pencil, only: [:show, :edit, :update, :destroy]

  # GET /pencils
  # GET /pencils.json
  def index
    @pencils = Pencil.all
  end

  # GET /pencils/1
  # GET /pencils/1.json
  def show
  end

  # GET /pencils/new
  def new
    @pencil = Pencil.new
  end

  # GET /pencils/1/edit
  def edit
  end

  # POST /pencils
  # POST /pencils.json
  def create
    @pencil = Pencil.new(pencil_params)

    respond_to do |format|
      if @pencil.save
        format.html { redirect_to @pencil, notice: 'Pencil was successfully created.' }
        format.json { render :show, status: :created, location: @pencil }
      else
        format.html { render :new }
        format.json { render json: @pencil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pencils/1
  # PATCH/PUT /pencils/1.json
  def update
    respond_to do |format|
      if @pencil.update(pencil_params)
        format.html { redirect_to @pencil, notice: 'Pencil was successfully updated.' }
        format.json { render :show, status: :ok, location: @pencil }
      else
        format.html { render :edit }
        format.json { render json: @pencil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pencils/1
  # DELETE /pencils/1.json
  def destroy
    @pencil.destroy
    respond_to do |format|
      format.html { redirect_to pencils_url, notice: 'Pencil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pencil
      @pencil = Pencil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pencil_params
      params.require(:pencil).permit(:pencil_id, :description, :price)
    end
end
