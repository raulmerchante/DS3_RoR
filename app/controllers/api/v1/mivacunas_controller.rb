module Api
  module V1
    class MivacunasController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def show
        @mivacuna = Mivacuna.find_by(id: params[:id])
        if (@mivacuna!=nil)
          render json: @mivacuna, status: :ok
    else
         render json: :nothing, status: :not_found
      end
  end
  
  def index
          render json: Mivacuna.all, status: :ok
  end

  private
  def project_params
        params.require(:mivacuna).permit(:id, :antigenos, :lipidos, :conservantes)
  end
  end
  end
  end
  
  
  