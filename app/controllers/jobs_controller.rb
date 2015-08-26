class JobsController < ApplicationController
#load_and_authorize_resource
   #before_action :authenticate_empresa!
   #before_action :authenticate_user!, only: [:index]
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def actualiza 
    @jobID = Job.find(params[:id])
    @jobID.update(:status => params[:status])
     if @jobID.save
        redirect_to "/mis_vacantes"
     end
  end

  def index
    @business = Business.where(:user_id => current_empresa.id).first
    if @business.nil?
        redirect_to "/Perfil"
    else
        @tags = Job.where(:user_id => current_empresa.id).pluck(:tag_id)
        @conteo = MyTag.where(:tag_id => Job.where(:user_id => current_empresa.id).pluck(:tag_id) )
        logger.debug @conteo.count
        @jobs = Job.where(:user_id => current_empresa.id)
        respond_with(@jobs)
    end
  end

  def show

    #@conteo = MyTag.where(tag_id: params[:tag_id]).count
    @job = Job.find(params[:id])
    @count=@job.countclicks+1
    logger.debug "conteo #{@count}"
    @job.countclicks = @count
    @job.save
    #respond_with(@job)

  end

  def new
    @id_business = Business.where(user_id: current_empresa.id).pluck(:id).first
    @job = Job.new
    respond_with(@job)
    authorize! :new, @job
  end

  def edit
   @id_business = Business.where(user_id: current_empresa.id).pluck(:id).first
    authorize! :edit, @job
  end

  def create
    @job = Job.new(job_params)
    @job.save
    respond_with(@job)
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    authorize! :destroy, @job
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:business_id, :user_id, :name, :tag_id, :area_id, :description, :country_id, :state_id, :city_id, :day_type, :type_contract, :salary, :date_recruitment, :number_jobs, :year_experience, :minimum_age, :maximum_age, :language, :percentage_language, :ofimatica, :availability_travel, :change_home, :disability, :status, :countclicks, :profession, :provision, :tools, :knowledge)
    end
end
