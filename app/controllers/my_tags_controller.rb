class MyTagsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_my_tag, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @my_tags = MyTag.where(user_id: current_user.id)
    respond_with(@my_tags)
  end

  def show
    respond_with(@my_tag)
  end

  def new
    @my_tag = MyTag.new
    respond_with(@my_tag)
  end

  def edit
  end

  def create
    @my_tag = MyTag.new(my_tag_params)
    @my_tag.save
    redirect_to "/vacantes_sugeridas"
  end

  def update
    @my_tag.update(my_tag_params)
    respond_with(@my_tag)
  end

  def destroy
    @my_tag.destroy
    respond_with(@my_tag)
  end

  private
    def set_my_tag
      @my_tag = MyTag.find(params[:id])
    end

    def my_tag_params
      params.require(:my_tag).permit(:cv_id, :idioma_id, :user_id, :tag_id)
    end
end
