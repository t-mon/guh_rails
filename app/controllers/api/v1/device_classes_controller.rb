class Api::V1::DeviceClassesController < ApplicationController
  
  def index
    if params[:vendor_id].present?
      @device_array = Guh::DeviceClass.all(vendor_id: params[:vendor_id])
    else
      @device_array = Guh::DeviceClass.all
    end
    
    respond_to do |format|
      format.json { render json: @device_array }
    end
  end
  
end