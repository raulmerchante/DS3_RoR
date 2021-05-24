class DiariosController < ApplicationController
  before_action :set_diario, only: %i[ show edit update destroy ]

  # GET /diarios or /diarios.json
  def index
    @diarios = Diario.all
  end

  # GET /diarios/1 or /diarios/1.json
  def show
  end

  # GET /diarios/new
  def new
    @diario = Diario.new
  end

  # GET /diarios/1/edit
  def edit
  end

  # POST /diarios or /diarios.json
  def create
    @diario = Diario.new(diario_params)

    respond_to do |format|
      if @diario.save
        format.html { redirect_to @diario, notice: "Diario was successfully created." }
        format.json { render :show, status: :created, location: @diario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diarios/1 or /diarios/1.json
  def update
    respond_to do |format|
      if @diario.update(diario_params)
        format.html { redirect_to @diario, notice: "Diario was successfully updated." }
        format.json { render :show, status: :ok, location: @diario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diarios/1 or /diarios/1.json
  def destroy
    @diario.destroy
    respond_to do |format|
      format.html { redirect_to diarios_url, notice: "Diario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diario
      @diario = Diario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diario_params
      params.require(:diario).permit(:nombre_paciente, :apellidos_paciente, :fecha, :dni)
    end
end
