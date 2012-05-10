require 'will_paginate/array'
class Admin::DeviceSpotsController < Admin::AdminController
  def index
    @device_spots = DeviceSpot.all.paginate(:per_page => per_page, :page => page)
  end
  
  def create
    @device_spot = DeviceSpot.new(params[:device_spot])

    if @device_spot.save
      redirect_to admin_device_spots_path
    end
  end

  def destroy
    @device_spot = DeviceSpot.find(params[:id])
    @device_spot.destroy
    redirect_to admin_device_spots_path
  end
  
  private
  
  def page
    params[:page] || 1
  end

  def per_page
    params[:per_page] || 10
  end

end
