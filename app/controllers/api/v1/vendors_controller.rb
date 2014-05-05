class Api::V1::VendorsController < ApplicationController
  
  def index
    @vendors = Guh::Vendor.all
    
    respond_to do |format|
      format.json { render json: @vendors }
    end
  end
  
end