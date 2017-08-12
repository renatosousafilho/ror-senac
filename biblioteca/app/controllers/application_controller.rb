class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :authenticate_user!

  def set_locale
     I18n.locale = params[:lang] || I18n.default_locale
  end

  rescue_from CanCan::AccessDenied do |exception|
     redirect_to "/",
       notice: "Você não tem permissão para acessar essa pagina"
  end
end
