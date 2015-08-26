class VacantesController < ApplicationController
  before_action :authenticate_empresa!
  before_action :set_vacante, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vacantes = Vacante.all
    respond_with(@vacantes)
  end

  def show
    respond_with(@vacante)
  end

  def new
    @vacante = Vacante.new
    respond_with(@vacante)
  end

  def edit
  end

  def create
    @vacante = Vacante.new(vacante_params)
    @vacante.save
    respond_with(@vacante)
  end

  def update
    @vacante.update(vacante_params)
    respond_with(@vacante)
  end

  def destroy
    @vacante.destroy
    respond_with(@vacante)
  end

  private
    def set_vacante
      @vacante = Vacante.find(params[:id])
    end

    def vacante_params
      params.require(:vacante).permit(:name, :description, :business, :business_id)
    end
end
