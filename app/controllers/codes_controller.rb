class CodesController < ApplicationController
  def index
    @codes = Code.search(params[:q], params[:page], 3)
  end
end
