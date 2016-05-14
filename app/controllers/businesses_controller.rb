class BusinessesController < ApplicationController

  def index
    @businesses = Business.all.paginate(:page => params[:page], :per_page => 15)
  end

  def show 
    @business = Business.find(params[:id])
  end 
end
