class Admin::DevicePhotosController < Admin::AdminController
  def index
    @device_photos = DevicePhoto.all
  end
  
  def new
    @device_photo = DevicePhoto.new
  end
  
  def create
  @device_photo = DevicePhoto.new(params[:device_photo])

    if @device_photo.save
      redirect_to "/admin/device_photos/"
    end
  end

  def destroy
    @device_photo = DevicePhoto.find(params[:id])
    @device_photo.destroy
    redirect_to "/admin/device_photos/"
  end

end
