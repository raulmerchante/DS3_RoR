class MivacunasController < ApplicationController
  before_action :set_mivacuna, only: %i[ show edit update destroy ]

  # GET /mivacunas or /mivacunas.json
  def index
    @mivacunas = Mivacuna.all
  end

  # GET /mivacunas/1 or /mivacunas/1.json
  def show
  end

  # GET /mivacunas/new
  def new
    @mivacuna = Mivacuna.new
  end

  # GET /mivacunas/1/edit
  def edit
  end

  # POST /mivacunas or /mivacunas.json
  def create
    @mivacuna = Mivacuna.new(mivacuna_params)

    respond_to do |format|
      if @mivacuna.save
        format.html { redirect_to @mivacuna, notice: "Mivacuna was successfully created." }
        format.json { render :show, status: :created, location: @mivacuna }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mivacuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mivacunas/1 or /mivacunas/1.json
  def update
    respond_to do |format|
      if @mivacuna.update(mivacuna_params)
        format.html { redirect_to @mivacuna, notice: "Mivacuna was successfully updated." }
        format.json { render :show, status: :ok, location: @mivacuna }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mivacuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mivacunas/1 or /mivacunas/1.json
  def destroy
    @mivacuna.destroy
    respond_to do |format|
      format.html { redirect_to mivacunas_url, notice: "Mivacuna was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mivacuna
      @mivacuna = Mivacuna.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mivacuna_params
      params.require(:mivacuna).permit(:antigenos, :lipidos, :conservantes)
    end
end
