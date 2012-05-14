class Code < ActiveRecord::Base
  BRANDS = ["BENZ", "BMW", "DAEWOO", "FIAT", "FORD", "HONDA", "TOYOTA", "VOLVO",
            "MAZDA", "MITSUBISHI", "NISSAN", "OPEL", "PEUGEOT", "SAAB", "VOLKSWAGEN"]
            
   def self.search(search, brand, page, pp)
    per_page = pp || 3
    if search && brand
      paginate :per_page => per_page, :page => page,
               :conditions => ['(number LIKE ? OR text LIKE ?) AND car_brand LIKE ?', "%#{search}%", "%#{search}%", "%#{brand}%"],
               :order => 'number'
    elsif search
      paginate :per_page => per_page, :page => page,
               :conditions => ['number LIKE ? OR text LIKE ?', "%#{search}%", "%#{search}%"],
               :order => 'number'
    else
      paginate :per_page => per_page, :page => page,
               :order => 'number'
    end
  end
end
