class NewsController < ApplicationController
  def index
    @news = News.paginate :per_page => 3, :page => params[:page],
                          :order => 'created_at DESC'
  end
end
