module Api
  module V1
    class DiariosController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def create
    @diario = Diario.new(diario_params)

      if @diario.save
        render json: @diario, status: :created
      else
        render json: @diario.errors, status: :unprocessable_entity
      end
end
  
  def index
          render json: Diario.all, status: :ok
  end


  private
  def diario_params
        params.require(:diario).permit(:nombre_paciente, :apellidos_paciente, :fecha, :dni)
  end
  end
  end
  end
  