class Code < ActiveRecord::Base
   def self.search(search, page, pp)
    per_page = pp || 3
    if search
      paginate :per_page => per_page, :page => page,
               :conditions => ['number LIKE ? or text LIKE ?', "%#{search}%", "%#{search}%"],
               :order => 'number'
    else
      paginate :per_page => per_page, :page => page,
               :order => 'number'
    end
  end
end
