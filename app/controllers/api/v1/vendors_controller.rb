class Api::V1::VendorsController < ApplicationController

  def index
    @vendors = Guh::Vendor.all

    respond_to do |format|
      format.json { render json: @vendors }
    end
  end

  def show
    @vendor = Guh::Vendor.find(params[:id])

    respond_to do |format|
      format.json { render json: @vendor }
    end
  end

end
