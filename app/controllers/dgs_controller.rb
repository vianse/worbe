class DgsController < ApplicationController
   before_action :authenticate_user!
  before_action :set_dg, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @dgs = Dg.where(:user_id => current_user.id)
    respond_with(@dgs)
  end

  def show
    respond_with(@dg)
  end

  def new
    @dg = Dg.new
    respond_with(@dg)
  end

  def edit
  end

  def create
    @dg = Dg.new(dg_params)
    @dg.save

    #respond_with(@dg)
    redirect_to "/dgs"

  end

  def update
    @dg.update(dg_params)
    redirect_to "/dashboard"
  end

  def destroy
    @dg.destroy
    redirect_to "/dashboard"
  end

  private
    def set_dg
      @dg = Dg.find(params[:id])
    end

    def dg_params
      params.require(:dg).permit(:name, :datebirthday, :age, :address, :phone1, :phone2, :email,:user_id, :photo, :guid)
    end
end
