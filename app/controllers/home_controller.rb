class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to inicio_index_path
  	end
  	if empresa_signed_in?
  		redirect_to home_empresa_path
  	end
  end
end
