class News < ActiveRecord::Base

  def self.search(search, page, pp)
    per_page = pp || 3
    if search
      paginate :per_page => per_page, :page => page,
               :conditions => ['title LIKE ? or content LIKE ?', "%#{search}%", "%#{search}%"],
               :order => 'title'
    else
      paginate :per_page => per_page, :page => page,
               :order => 'title'
    end
  end
end
