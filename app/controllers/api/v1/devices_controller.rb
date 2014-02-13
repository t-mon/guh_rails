class Api::V1::DevicesController < ApplicationController
  
  def index
    @device_array = [
      {id: 1, uuid: SecureRandom.uuid},
      {id: 2, uuid: SecureRandom.uuid},
      {id: 3, uuid: SecureRandom.uuid},
      {id: 4, uuid: SecureRandom.uuid}
    ]
    
    respond_to do |format|
      format.json { render json: @device_array }
    end
  end
  
end
