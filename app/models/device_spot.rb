class DeviceSpot < ActiveRecord::Base
  acts_as_gmappable
  def gmaps4rails_address
    "#{self.address}" 
  end
  
  def gmaps4rails_infowindow
    "#{self.name}"
  end
  
  def gmaps4rails_title
    "#{self.name}"
  end
end
