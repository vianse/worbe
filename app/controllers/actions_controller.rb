class ActionsController < ApplicationController
 before_action :authenticate_user!
 respond_to :html
  def index
  	@titlecv = Cv.where(user_id: current_user.id).pluck(:title).first
  end
  def publicar
     @guid = Digest::MD5.hexdigest(current_user.id.to_s)
     @cv   = Cv.where(:user_id => current_user.id).first
     @cv.update(:guid => @guid)
     @dg   = Dg.find_by_user_id(current_user.id)
     @dg.update(:guid => @guid)
     @ed   = Education.where(user_id: current_user.id)
     @ed.each do |a|
       a.update(:guid => @guid)
     end
     @co   = Course.where(user_id: current_user.id)
     @co.each do |b|
      b.update(:guid => @guid)
     end
     @ce   = Certificate.where(user_id: current_user.id)
     @ce.each do |c|
      c.update(:guid => @guid)
     end
     @la   = Language.where(user_id: current_user.id)
     @la.each do |d|
      d.update(:guid => @guid)
     end
     @ex   = Experience.where(user_id: current_user.id)
     @ex.each do |e|
      e.update(:guid => @guid)
     end
     @mt   = MyTag.where(user_id: current_user.id)
     @mt.each do |f|
       f.update(:guid => @guid)
     end
     redirect_to '/dashboard'
   end
   def preview
    @cv      = Cv.where(user_id: current_user.id).first
    @nombre  = Dg.where(user_id: current_user.id).first
    @dgs     = Dg.where(user_id: current_user.id)
  	@titlecv = Cv.where(user_id: current_user.id).pluck(:title).first
  	@name    = Dg.where(user_id: current_user.id).pluck(:name).first
  	@datebirthday = Dg.where(user_id: current_user.id).first
    @age     = Dg.where(user_id: current_user.id).first
  	@address = Dg.where(user_id: current_user.id).first
  	@phone1  = Dg.where(user_id: current_user.id).first
  	@phone2  = Dg.where(user_id: current_user.id).first
  	@email   = Dg.where(user_id: current_user.id).first
  	@photo   = Dg.where(user_id: current_user.id).first
    @areaspreview = Area.where(:user_id => current_user)
  	@areas        = Area.where(:user_id => current_user).pluck(:name).first
  	@educations   = Education.where(:user_id => current_user)
    @courses      = Course.where(:user_id => current_user)
    @certificates = Certificate.where(:user_id => current_user)
    @languages    = Language.where(:user_id => current_user)
    @experiences  = Experience.where(:user_id => current_user)
   # @list_tags    = Tag.where(:id => MyTag.where(:user_id => current_user.id).pluck(:tag_id))
    @list_tags    = MyTag.where(:user_id => current_user.id)
    @guid   = Digest::MD5.hexdigest(current_user.id.to_s)
    @server = "http://" + request.host_with_port
    logger.debug @server
    
   # respond_with(@courses)
   respond_to do |format|
      format.html
      format.pdf do
        pdf =  ReportPdf.new(@dgs,@titlecv, @photo,@age, @name, @list_tags,@datebirthday,@address,@phone1,@phone2,@email,@educations,@experiences,@courses,@languages,@certificates,@server)
        send_data pdf.render, filename: 'worbe-'+"#{@name}-#{@guid}"+'.pdf', type: 'application/pdf'
      end
    end
  end

  def dashboard
    Rails.logger.info "Currente User #{current_user.inspect}"
  	@id            = Cv.where(user_id: current_user.id).pluck(:id).first
    @id_dg         = Dg.where(user_id: current_user.id).pluck(:id).first
    @id_tag        = Area.where(user_id: current_user.id).pluck(:id).first
    @id_educations = Education.where(:user_id => current_user)
    @cv            = Cv.where(user_id: current_user.id).first
    @nombre        = Dg.where(user_id: current_user.id).first
    @dgs           = Dg.where(user_id: current_user.id)
    @titlecv       = Cv.where(user_id: current_user.id).pluck(:title).first
    @name          = Dg.where(user_id: current_user.id).pluck(:name).first
    @datebirthday  = Dg.where(user_id: current_user.id).first
    @age           = Dg.where(user_id: current_user.id).first
    @address       = Dg.where(user_id: current_user.id).first
    @phone1        = Dg.where(user_id: current_user.id).first
    @phone2        = Dg.where(user_id: current_user.id).first
    @email         = Dg.where(user_id: current_user.id).first
    @photo         = Dg.where(user_id: current_user.id).first
    @areaspreview  = MyTag.where(:user_id => current_user)
    @areas         = Area.where(:user_id => current_user).pluck(:name).first
    @educations    = Education.where(:user_id => current_user)
    @courses       = Course.where(:user_id => current_user)
    @certificates  = Certificate.where(:user_id => current_user)
    @languages     = Language.where(:user_id => current_user)
    @experiences   = Experience.where(:user_id => current_user)
    @list_tags    = MyTag.where(:user_id => current_user.id)
    #@list_tags     = Tag.where(:id => MyTag.where(:user_id => current_user.id).pluck(:tag_id))
    @guid          = Digest::MD5.hexdigest(current_user.id.to_s)
    @server        = "http://" + request.host_with_port
    logger.debug @server
    
   # respond_with(@courses)
   respond_to do |format|
      format.html
      format.pdf do
        pdf =  ReportPdf.new(@dgs,@titlecv, @photo,@age, @name, @list_tags,@datebirthday,@address,@phone1,@phone2,@email,@educations,@experiences,@courses,@languages,@certificates,@server)
        send_data pdf.render, filename: 'worbe-'+"#{@name}-#{@guid}"+'.pdf', type: 'application/pdf'
      end
   end
 end
 
end
