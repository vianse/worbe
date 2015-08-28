class BusinessesController < ApplicationController
  before_action :authenticate_empresa!
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @businesses = Business.all
    respond_with(@businesses)


  end

  def show
    respond_with(@business)
  end

  def new
    @business = Business.where(:user_id => current_empresa.id).first
     if @business.nil?
    @business = Business.new
    respond_with(@business) 
    else
    redirect_to "/Perfil/#{@business.id}"
    end
   
  end

  def edit
  end

  def create
    @business = Business.new(business_params)
    @business.save
    respond_with(@business)
  end

  def update
    @business.update(business_params)
    respond_with(@business)
  end

  def destroy
    @business.destroy
    respond_with(@business)
  end

  private
    def set_business
      @business = Business.find(params[:id])
    end

    def business_params
      params.require(:business).permit(:user_id, :name, :business_name, :rfc, :country_id, :state_id, :city_id, :Postal_Code, :address, :sector, :Number_of_employees, :business_type, :business_description, :web, :logo, :contactname, :contactemail,:phone1, :phone2)
    end
end
