class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to dashboard_path
  	end
  	if empresa_signed_in?
  		redirect_to index_empresas_path
  	end
  end
end
