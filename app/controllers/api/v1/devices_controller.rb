class Api::V1::DevicesController < ApplicationController
  
  def index
    @device_array = Guh::Device.all
    
    respond_to do |format|
      format.json { render json: @device_array }
    end
  end
  
  def show
    @device = Guh::Device.find(params[:id])
    
    respond_to do |format|
      format.json { render json: @device }
    end
  end
  
  def create
    device_class_id = params[:device].delete(:deviceClassId)
    
    device_id = Guh::Device.add(device_class_id, device_params)
    
    respond_to do |format|
      format.json { render json: {device_id: device_id} }
    end
  end
  
  def destroy
    response = Guh::Device.remove(params[:id])
    
    respond_to do |format|
      format.json { render json: response }
    end
  end
  
  private
  
  def device_params
    params.require(:device).permit!
  end
  
end
