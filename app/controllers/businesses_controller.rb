class BusinessesController < ApplicationController

  def index
    @businesses = Business.all.paginate(:page => params[:page], :per_page => 25)
  end

  def show 
    @business = Business.find(params[:id])
  end 
end

json.each do |business_json|
  business = Business.new
  business.business_phone = business_json["business_phone"]
  business.business_type = business_json["business_type"]
  business.name = business_json["name"]
  business.owner = business_json["owner"]
  business.start_date = business_json["start_date"]
  business.save
end