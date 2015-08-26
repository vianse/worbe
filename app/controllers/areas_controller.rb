class AreasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_area, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @areas = Area.all
    respond_with(@areas)
  end

  def show
    respond_with(@area)
  end

  def new
    @area = Area.new
    respond_with(@area)
  end

  def edit
  end

  def create
    @area = Area.new(area_params)
    @area.save
    respond_with(@area)
  end

  def update
    @area.update(area_params)
    respond_with(@area)
  end

  def destroy
    @area.destroy
    respond_with(@area)
  end

  private
    def set_area
      @area = Area.find(params[:id])
    end

    def area_params
      params.require(:area).permit(:name, :user_id)
    end
end
