class CertificatesController < ApplicationController
   before_action :authenticate_user!
  before_action :set_certificate, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @certificates = Certificate.all
    respond_with(@certificates)
  end

  def show
    respond_with(@certificate)
  end

  def new
    @certificate = Certificate.new
    respond_with(@certificate)
    
  end

  def edit
  end

  def create
    @certificate = Certificate.new(certificate_params)
    @certificate.save
    redirect_to "/certificates"
  end

  def update
    @certificate.update(certificate_params)
    respond_with(@certificate)
  end

  def destroy
    @certificate.destroy
    respond_with(@certificate)
  end

  private
    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    def certificate_params
      params.require(:certificate).permit(:name, :user_id)
    end
end
