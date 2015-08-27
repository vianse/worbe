class PublicoController < ApplicationController
  def index
    if params[:guid].blank?
      redirect_to "/"
    else
  	#@guid   = Digest::MD5.hexdigest(params[:guid])
    @guid   = params[:guid]
    @id     = Cv.where(guid: @guid).pluck(:id).first
    @id_dg  = Dg.where(guid: @guid).pluck(:id).first
    # @id_tag = Area.where(user_id: current_user.id).pluck(:id).first
    # @id_educations =  Education.where(:user_id => current_user)
    @cv      = Cv.where(guid: @guid).first
    @nombre  = Dg.where(guid: @guid).first
    @dgs     = Dg.where(guid: @guid)
    @titlecv = Cv.where(guid: @guid).pluck(:title).first
    @name    = Dg.where(guid: @guid).pluck(:name).first
    @datebirthday = Dg.where(guid: @guid).first
    @age     = Dg.where(guid: @guid).first
    @address = Dg.where(guid: @guid).first
    @phone1  = Dg.where(guid: @guid).first
    @phone2  = Dg.where(guid: @guid).first
    @email   = Dg.where(guid: @guid).first
    @photo   = Dg.where(guid: @guid).first
    @areaspreview = MyTag.where(guid: @guid)
    # @areas = Area.where(:user_id => current_user).pluck(:name).first
    @educations   = Education.where(guid: @guid)
    @courses      = Course.where(guid: @guid)
    @certificates = Certificate.where(guid: @guid)
    @languages    = Language.where(guid: @guid)
    @experiences  = Experience.where(guid: @guid)
    #@list_tags    = Tag.where(:id => MyTag.where(guid: @guid).pluck(:tag_id))
    @list_tags    = MyTag.where(:user_id => current_user.id)
   
    @server = "http://" + request.host_with_port
    logger.debug @cv
    
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
end
