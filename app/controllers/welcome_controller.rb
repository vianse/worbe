class WelcomeController < ApplicationController

 before_action :authenticate_user!
 respond_to :html

  def index
  	#@jobs = Job.where(["tag_id = ? and status = ?", MyTag.where(:user_id => current_user.id), "Publicado"])
	@ids = MyTag.where(:user_id => current_user.id).pluck(:tag_id)
	@aplicado = Application.where(:user_id => current_user.id).pluck(:job_id)
	@aplicadojob = Job.where(:id => @aplicado)
	
	#@jobs = Job.where(:tag_id => @ids )
	@jobs = Job.where("tag_id IN (?) and status = ?", @ids , "Publicado")

	@list_tags = Tag.where(:id => MyTag.where(:user_id => current_user.id).pluck(:tag_id))
	respond_with(@jobs) 
  end

  def dashboard
  end
  
end
