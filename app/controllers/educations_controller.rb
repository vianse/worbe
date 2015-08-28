class EducationsController < ApplicationController
   before_action :authenticate_user!
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @educations = Education.where(:user_id => current_user)
    respond_with(@educations)
  end

  def show
    respond_with(@education)
  end

  def new
    @educations = Education.where(:user_id => current_user)
    @education = Education.new
    respond_with(@education)
  end

  def edit
  end

  def create
    @education = Education.new(education_params)
    @education.save
    redirect_to "/educations"
  end

  def update
    @education.update(education_params)
    respond_with(@education)
  end

  def destroy
    @education.destroy
    respond_with(@education)
  end

  private
    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:school, :yearInitial, :yearFinal, :graduated, :DocumentReceived, :average, :comments, :level, :user_id,:title)
    end
end
