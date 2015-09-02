class HomeEmpresaController < ApplicationController
  before_action :authenticate_empresa!
  def index
   # @business = Business.where(:id => current_empresa.id).first
   #   if @business.nil?
   #     redirect_to "/home"
   #   else
   #   end
    end
    def busqueda_dg
    	@resultado = MyTag.where("lower(name) LIKE (?)", "%#{params[:key.downcase]}%").pluck(:guid)
    	if params[:key].blank?
    	
	    else
	    	@cv = Busqueda.where(:guid => @resultado)
	    	render json: @cv
	    end
	
    end
end
