class Api::V1::RulesController < ApplicationController
  
  def index
    @rule_array = [
      {id: 1, rule: "if this then that"},
      {id: 2, rule: "if this then that"},
      {id: 3, rule: "if this then that"},
      {id: 4, rule: "if this then that"}
    ]
    
    respond_to do |format|
      format.json { render json: @rule_array }
    end
  end
  
end
