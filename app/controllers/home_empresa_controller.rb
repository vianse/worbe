class HomeEmpresaController < ApplicationController
  before_action :authenticate_empresa!
  def index
   # @business = Business.where(:id => current_empresa.id).first
   #   if @business.nil?
   #     redirect_to "/home"
   #   else
   #   end

    end
end
