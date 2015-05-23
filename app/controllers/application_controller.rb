class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   def current_account
    @iduser = session[:user_id]
    @current_account ||= Account.find(@iduser) if @iduser
    end
     helper_method :current_account

protected
def configure_devise_parameters
  devise_parameter_sanitizer.for(:account_update) << :name
end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

end
