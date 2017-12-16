class PencilCasesController < ApplicationController
  before_action :set_pencil_case, only: [:show, :edit, :update, :destroy]

  # GET /pencil_cases
  # GET /pencil_cases.json
  def index
    @pencil_cases = PencilCase.all
  end

  # GET /pencil_cases/1
  # GET /pencil_cases/1.json
  def show
  end

  # GET /pencil_cases/new
  def new
    @pencil_case = PencilCase.new
  end

  # GET /pencil_cases/1/edit
  def edit
  end

  # POST /pencil_cases
  # POST /pencil_cases.json
  def create
    @pencil_case = PencilCase.new(pencil_case_params)

    respond_to do |format|
      if @pencil_case.save
        format.html { redirect_to @pencil_case, notice: 'Pencil case was successfully created.' }
        format.json { render :show, status: :created, location: @pencil_case }
      else
        format.html { render :new }
        format.json { render json: @pencil_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pencil_cases/1
  # PATCH/PUT /pencil_cases/1.json
  def update
    respond_to do |format|
      if @pencil_case.update(pencil_case_params)
        format.html { redirect_to @pencil_case, notice: 'Pencil case was successfully updated.' }
        format.json { render :show, status: :ok, location: @pencil_case }
      else
        format.html { render :edit }
        format.json { render json: @pencil_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pencil_cases/1
  # DELETE /pencil_cases/1.json
  def destroy
    @pencil_case.destroy
    respond_to do |format|
      format.html { redirect_to pencil_cases_url, notice: 'Pencil case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pencil_case
      @pencil_case = PencilCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pencil_case_params
      params.require(:pencil_case).permit(:pencil_case_id, :description, :price)
    end
end
