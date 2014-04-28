class Api::V1::IntrospectsController < ApplicationController
  
  def show
    @introspect = Guh::Base.introspect
    
    respond_to do |format|
      format.json { render json: @introspect }
    end
  end
  
end
