class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Garage::ControllerHelper

  def current_resource_owner
    @current_recource_owner ||= User.find(resource_owner_id) if resource_owner_id
  end

  rescue_from WeakParameters::ValidationError do
    head 400
  end
end
