module Api
  module V1
    class DiariosController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def show
    @diario = Diario.find_by(id: params[:id])
    if (@diario!=nil)
      render json: @diario, status: :ok
else
     render json: :nothing, status: :not_found
  end
end

def index
  render json: Diario.all, status: :ok
end

  def create
    @diario = Diario.new(diario_params)

      if @diario.save
        render json: @diario, status: :created
      else
        render json: @diario.errors, status: :unprocessable_entity
      end
end
  
 


  private
  def diario_params
        params.require(:diario).permit(:nombre_paciente, :apellidos_paciente, :fecha, :dni)
  end
  end
  end
  end
  