class ApplicationsController < ApplicationController
   #before_action :authenticate_empresa!
   #load_and_authorize_resource
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def aplicar
    @aplicar = Application.create(
      :business_id => params[:business_id],
      :user_id => current_user.id,
      :job_id => params[:job_id],
      :cv_id => params[:cv_id],
      :date_application => Time.now.strftime("%d-%m-%y")
      )
    if @aplicar.save
        redirect_to "/vacantes_sugeridas"
      end
  end

  def index
    @applications = Application.all
    respond_with(@applications)
  end

  def show
    respond_with(@application)
  end

  def new
    @application = Application.new
    respond_with(@application)
  end

  def edit
  end

  def create
    @application = Application.new(application_params)
    @application.save
    respond_with(@application)
  end

  def update
    @application.update(application_params)
    respond_with(@application)
  end

  def destroy
    @application.destroy
    respond_with(@application)
  end

  private
    def set_application
      @application = Application.find(params[:id])
    end

    def application_params
      params.require(:application).permit(:business_id, :user_id, :job_id, :cv_id, :date_application)
    end
end
