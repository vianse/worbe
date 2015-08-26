class InicioController < ApplicationController
  def index
  	@dgs = Dg.where(:user_id => current_user.id).first
  	@encabezado  = Cv.where(:user_id => current_user.id).pluck(:id)
  	@datos 		 = Dg.where(:user_id => current_user.id).pluck(:id)
  	@estudios    = Education.where(:user_id => current_user.id).pluck(:id)
  	@experiencia = Experience.where(:user_id => current_user.id).pluck(:id)
  	@cursos 	 = Course.where(:user_id => current_user.id).pluck(:id)
  	@certificaciones = Certificate.where(:user_id => current_user.id).pluck(:id)
  	@idiomas     = Language.where(:user_id => current_user.id).pluck(:id)
  	@server = "http://" + request.host_with_port
  	if @dgs.nil?
	  else
	  	if @dgs.guid.blank?
	  		@status = "en Borrador"
	  		else
	  		@status = "Publicado"
	  	end
 	 end
	 if @encabezado.blank?
	 	@variable_en = 0
	 else
	 	@variable_en = 1
	 end
	 if @datos.blank?
	 	@variable_dg = 0
	 else
	 	@variable_dg = 1
	 end
	 if @estudios.blank?
	 	@variable_es = 0
	 else
	 	@variable_es = 1
	 end
	 if @experiencia.blank?
	 	@variable_ex = 0
	 else
	 	@variable_ex = 1
	 end
	 if @cursos.blank?
	 	@variable_cu = 0
	 else
	 	@variable_cu = 1
	 end
	 if @certificaciones.blank? 
	 	@variable_ce = 0
	 else
	 	@variable_ce = 1
	 end
	 if @idiomas.blank? 
	 	@variable_id = 0
	 else
	 	@variable_id = 1
	 end
	 Rails.logger.info " ID promedio #{@variable_id}"
	 @suma = (Float(@variable_id)+Float(@variable_ce)+Float(@variable_cu)+Float(@variable_ex)+Float(@variable_es)+Float(@variable_dg)+Float(@variable_en)).round(0)
	 @resultado = (Float(@suma)/ (7)*100).round(0) 
	 
  end
end
