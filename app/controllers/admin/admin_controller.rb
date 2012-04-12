class Admin::AdminController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!

  def css_class_prefix
    'admin-'
  end

  def css_id_prefix
    'admin-'
  end
end
