class ActionsController < ApplicationController
 before_action :authenticate_user!
 respond_to :html, :json
  def index
  	@titlecv = Cv.where(user_id: current_user.id).pluck(:title).first
  end
  def crear_educations
    @education = Education.create(
      :school => "Ingresa el nombre de la escuela",
      :yearInitial => "Ingresa de inicio", 
      :yearFinal => "Ingresa de conclución",
      :graduated => "false", 
      :DocumentReceived => "Ingresa el Documento recibido", 
      :average => "Ingresa tu promedio", 
      :comments => "Ingresa algun comentario ", 
      :level => "Ingresa el nivel educativo", 
      :user_id => current_user.id,
      :title => "Ingresa el título recibido, en caso que aplique"
    )
    @education.save
    redirect_to '/dashboard'
  end
  def elimina_education
    @education = Education.find(params[:id])
    if @education.present?
      @education.destroy
    end
    redirect_to '/dashboard'
  end
   def crear_experiences
    @experiences = Experience.create(
      :datei => "Ingresa el año inicial",
      :datef => "Ingresa de año final", 
      :business => "Ingresa nombre del empresa",
      :description => "Ingresa tus actividades desempeñadas", 
      :user_id => current_user.id, 
      :Puesto => "Ingresa tu puesto", 
      :description_short=> "Ingresa alguna descripción "
    )
    @experiences.save
    redirect_to '/dashboard'
  end
  def elimina_experiences
    @experiences = Experience.find(params[:id])
    if @experiences.present?
      @experiences.destroy
    end
    redirect_to '/dashboard'
  end
  def crear_courses
    @courses = Course.create(
      :name => "Ingresa el nombre del curso",
      :description => "Ingresa alguna descripción", 
      :user_id => current_user.id       
    )
    @courses.save
    redirect_to '/dashboard'
  end
  def elimina_courses
    @courses = Course.find(params[:id])
    if @courses.present?
      @courses.destroy
    end
    redirect_to '/dashboard'
  end

   def crear_idiomas
    @idiomas = Language.create(
      :name => "Ingresa el nombre del idioma que dominas",
      :read => "Ingresa el porcentaje de lectura que tienes sobre el idioma", 
      :write => "Ingresa el porcentaje de escritura que tienes sobre el idioma", 
      :spoken => "Ingresa el porcentaje de habla que tienes sobre el idioma",
      :user_id => current_user.id       
    )
    @idiomas.save
    redirect_to '/dashboard'
  end
  def elimina_idiomas
    @idiomas = Language.find(params[:id])
    if @idiomas.present?
      @idiomas.destroy
    end
    redirect_to '/dashboard'
  end
  def crear_certificates
    @certificates = Certificate.create(
      :name => "Ingresa el nombre del certificado",
      :user_id => current_user.id       
    )
    @certificates.save
    redirect_to '/dashboard'
  end
  def elimina_certificates
    @certificates = Certificate.find(params[:id])
    if @certificates.present?
      @certificates.destroy
    end
    redirect_to '/dashboard'
  end
  def crear_tags

    @tags = MyTag.create(
      :name => "Ingresa el nombre de tu tag de interes",
      :user_id => current_user.id       
    )
    @tags.save
    redirect_to '/dashboard'
  end
  def elimina_tags
    @tags = MyTag.find(params[:id])
    if @tags.present?
      @tags.destroy
    end
    redirect_to '/dashboard'
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
    if @cv_create = Cv.where(user_id: current_user.id).first.blank?
        @cv_create = Cv.create(
        :title => "Ingresa un título para tu Curriculum",
        :user_id => current_user.id       
        )
        @cv_create.save
        @dg_create = Dg.create(
        :name => "Ingresa tu nombre",
        :datebirthday => "Ingresa tu fecha de nacimiento",
        :age => "Ingresa tu edad",
        :address => "Ingresa tu dirección",
        :phone1 => "Ingresa tu telefono",
        :phone2 => "Ingresa un telefono secundario",
        :email => current_user.email,
        :user_id => current_user.id       
        )
        @dg_create.save
    else

    @guid_publico  = Dg.where(:user_id => current_user.id).first
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
    if @guid_publico.nil?
    else
      if @guid_publico.guid.blank?
        @status = "en Borrador"
        else
        @status = "Publicado"
      end
    end
   end
    
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
