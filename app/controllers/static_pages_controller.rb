class StaticPagesController < ApplicationController
  def company
  end

  def contact
  end

  def news
  end

  def devices
    @photos = DevicePhoto.all
  end

  def localization
    @device_spots = DeviceSpot.all.to_gmaps4rails
  end

  def cooperation
  end

  def partners
  end

  def technodiag
  end

  def imedia
  end

  def help
  end

  def codes
  end

  def connectrs
  end

  def cars
  end
end
