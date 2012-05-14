class CodesController < ApplicationController
  def index
    @codes = Code.search(params[:q], params[:car_brand], params[:page], 3)
  end
end
