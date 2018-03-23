class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to pages_welcome_path, alert: exception.message
  end
end
