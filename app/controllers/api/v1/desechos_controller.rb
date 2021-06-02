module Api
  module V1
    class DesechosController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def show
    @desecho = Desecho.find_by(id: params[:id])
    if (@desecho!=nil)
      render json: @desecho, status: :ok
else
     render json: :nothing, status: :not_found
  end
end

def index
  render json: Desecho.all, status: :ok
end

  def create
    @desecho = Desecho.new(desecho_params)

      if @desecho.save
        render json: @desecho, status: :created
      else
        render json: @desecho.errors, status: :unprocessable_entity
      end
end
  
 


  private
  def desecho_params
        params.require(:desecho).permit(:id_vacuna_desechada, :porcentaje_eficiencia)
  end
  end
  end
  end
  