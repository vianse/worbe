class CvsController < ApplicationController
   before_action :authenticate_user!
  before_action :set_cv, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @cvs = Cv.where(:user_id => current_user.id)
    respond_with(@cvs)
  end

  def show
    respond_with(@cv)
  end

  def new
    @cv = Cv.new
    respond_with(@cv)
  end

  def edit
  end

  def create
    @cv = Cv.new(cv_params)
    @cv.save
    
    redirect_to "/cvs"
  end

  def update
    @cv.update(cv_params)
    redirect_to "/cvs"
  end

  def destroy
    @cv.destroy
    respond_with(@cv)
  end

  private
    def set_cv
      @cv = Cv.find(params[:id])
    end

    def cv_params
      params.require(:cv).permit(:user_id, :idioma_id, :title)
    end
end
