class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      "admin"
    else
      "application"
    end
  end

  def css_class_prefix
    ''
  end

  def css_id_prefix
    ''
  end
end
