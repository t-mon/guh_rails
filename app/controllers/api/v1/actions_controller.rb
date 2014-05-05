class Api::V1::ActionsController < ApplicationController
  
  before_filter :find_device
  
  def execute
    # @action = Guh::Action.find(@device['id'])
    
    response = Guh::Action.execute(params[:device_id], params[:id], typecast(params[:action_params]))
    
    logger.info response
    
    respond_to do |format|
      format.json { render json: response }
    end
  end
  
  private
  
  def typecast(attributes)
    # FIXME: this is stupid! find a better way!
    # TOOD: find a way to properly typecast these things for ALL controllers
    attributes.each do |key, value|
      if value=='yes'
        attributes[key] = true
      elsif value=='no'
        attributes[key] = false
      end
    end
  end
  
  def find_device
    # @device = Guh::Device.find(params[:device_id])
    # logger.info @device
  end
  
end
