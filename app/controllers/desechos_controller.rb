class DesechosController < ApplicationController
  before_action :set_desecho, only: %i[ show edit update destroy ]

  # GET /desechos or /desechos.json
  def index
    @desechos = Desecho.all
  end

  # GET /desechos/1 or /desechos/1.json
  def show
  end

  # GET /desechos/new
  def new
    @desecho = Desecho.new
  end

  # GET /desechos/1/edit
  def edit
  end

  # POST /desechos or /desechos.json
  def create
    @desecho = Desecho.new(desecho_params)

    respond_to do |format|
      if @desecho.save
        format.html { redirect_to @desecho, notice: "Desecho was successfully created." }
        format.json { render :show, status: :created, location: @desecho }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desechos/1 or /desechos/1.json
  def update
    respond_to do |format|
      if @desecho.update(desecho_params)
        format.html { redirect_to @desecho, notice: "Desecho was successfully updated." }
        format.json { render :show, status: :ok, location: @desecho }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desechos/1 or /desechos/1.json
  def destroy
    @desecho.destroy
    respond_to do |format|
      format.html { redirect_to desechos_url, notice: "Desecho was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desecho
      @desecho = Desecho.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desecho_params
      params.require(:desecho).permit(:id_vacuna_desechada, :porcentaje_eficiencia)
    end
end
