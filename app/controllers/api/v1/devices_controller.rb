class Api::V1::DevicesController < ApplicationController
  
  def index
    @device_array = HiveRpcWrapper::Device.configured
    
    respond_to do |format|
      format.json { render json: @device_array }
    end
  end
  
  def supported
    @device_array = HiveRpcWrapper::Device.supported
    
    respond_to do |format|
      format.json { render json: @device_array }
    end
  end
  
  def create
    device_class_id = params[:device].delete(:deviceClassId)
    
    HiveRpcWrapper::Device.add(device_class_id, device_params)
  end
  
  private
  
  def device_params
    params.require(:device).permit!
  end
  
end
