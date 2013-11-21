class BusesController < ApplicationController
  respond_to :json

  def index
    # params[:id]
    # @buses = params[:id] ? Bus.where('id= ?', params[:id]) : Bus.all
    #where will return all that match 
    # find will throw an error when it can't find what's passed it!
    @buses = params[:id] ? Bus.where('id in (?)', params[:id].split(",")) : Bus.all

    # render json: @buses
  end

  def create
  end

  def update
  end

  def destroy
  end
end
