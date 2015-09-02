class BusquedasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_busqueda, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @busquedas = Busqueda.all
    respond_with(@busquedas)
  end

  def show
    respond_with(@busqueda)
  end

  def new
    @busqueda = Busqueda.new
    respond_with(@busqueda)
  end

  def edit
  end

  def create
    @busqueda = Busqueda.new(busqueda_params)
    @busqueda.save
    respond_with(@busqueda)
  end

  def update
    @busqueda.update(busqueda_params)
    respond_with(@busqueda)
  end

  def destroy
    @busqueda.destroy
    respond_with(@busqueda)
  end

  private
    def set_busqueda
      @busqueda = Busqueda.find(params[:id])
    end

    def busqueda_params
      params.require(:busqueda).permit(:titulo , :nombre , :edad , :telefono , :telefono1 , :photo , :email , :guid)
    end
end
