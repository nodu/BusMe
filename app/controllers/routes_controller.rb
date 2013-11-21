class RoutesController < ApplicationController
  def index
    @bus = Bus.find(params[:bus_id])
    @routes = params[:id] ? @bus.routes.find(params[:id].split(","))  : @bus.routes

  end

  def create
  end

  def update
  end

  def destroy
  end
end
