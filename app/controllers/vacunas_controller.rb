class VacunasController < ApplicationController
  def index
    @prueba_vacunas = Vacunas.all
  end
  def show
  end
  def new
    @prueba_vacuna = Vacunas.new
  end
  def create
    @prueba_vacuna = Vacunas.new(prueba_vacuna_params)

    respond_to do |format|
      if @prueba_vacuna.save
        format.html { redirect_to @prueba_vacuna, notice: "prueba_vacuna was successfully created." }
        format.json { render :show, status: :created, location: @prueba_vacuna }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prueba_vacuna.errors, status: :unprocessable_entity }
      end
    end
  end
end
