class Admin::GanresController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@ganre = Ganre.new
  	@ganres = Ganre.all
  end

  def create
  	ganre = Ganre.new(ganre_params)
  	ganre.save
  	redirect_to admin_ganres_path
  end

  def edit
  	@ganre = Ganre.find(params[:id])
  end

  def update
  	@ganre = Ganre.find(params[:id])
  	@ganre.update(ganre_params)
  	redirect_to admin_ganres_path
  end

  private
  def ganre_params
  	params.require(:ganre).permit(:class_status, :category)
  end
end

