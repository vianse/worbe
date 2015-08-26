class ObjetivosController < ApplicationController
   before_action :authenticate_user!
  before_action :set_objetivo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @objetivos = Objetivo.all
    respond_with(@objetivos)
  end

  def show
    respond_with(@objetivo)
  end

  def new
    @objetivo = Objetivo.new
    respond_with(@objetivo)
  end

  def edit
  end

  def create
    @objetivo = Objetivo.new(objetivo_params)
    @objetivo.save
    respond_with(@objetivo)
  end

  def update
    @objetivo.update(objetivo_params)
    respond_with(@objetivo)
  end

  def destroy
    @objetivo.destroy
    respond_with(@objetivo)
  end

  private
    def set_objetivo
      @objetivo = Objetivo.find(params[:id])
    end

    def objetivo_params
      params.require(:objetivo).permit(:cv_id, :idioma_id, :user_id, :objetivos)
    end
end
