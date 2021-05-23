module Api
module V1
  class ProjectsController < ApplicationController

skip_before_action :verify_authenticity_token

def show
      @project = Project.find_by(id: params[:id])
      if (@project!=nil)
        render json: @project, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Project.all, status: :ok
end

def update
 @project = Project.find(params[:id])

  if @project.update(project_params)
        render json: @project, status: :ok
      else
        render json: @project.errors, status: :unprocessable_entity
      end
end

def create
    @project = Project.new(project_params)

      if @project.save
        render json: @project, status: :created
      else
        render json: @project.errors, status: :unprocessable_entity
      end
end

def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      render json: :nothing, status: :ok
    else
      render json: :nothing, status: :unprocessable_entity
    end
end
private
def project_params
      params.require(:project).permit(:name, :team, :info)
end
end
end
end


