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

#$.ajax('/api/buses', {type: "POST", contentType: 'application/json', data: JSON.stringify({bus: {name: "new bus4"}}), success: function(x) {console.log(x);}});
  def create
    @bus = Bus.new(user_params)
    if @bus.save
      head :created
    else
      head :unprocessable_entity
    end
  end

#$.ajax('/api/buses/14', {type: "PATCH", contentType: 'application/json', data: JSON.stringify({bus: {name: "new bus4 is now bus10"}}), success: function(x) {console.log(x);}});
  def update
    bus = Bus.where('id=?', params[:id]).take

    if bus
      if bus.update(user_params)
        head :reset_content
      else
        head :unprocessable_entity
      end
    else
      head :not_found
    end
  end

#$.ajax('/api/bus/2', {type: "DELETE", success: function(x) {console.log(x);}});
  def destroy
    bus = Bus.where('id=?', params[:id]).take #if using find, it will throw and error, where will just return nil
    if bus 
      if bus.destroy #check to see if bus exists first
        head :no_content
      else
        head :unprocessable_entity
      end
    else
      head :not_found
    end
  end

  private

  def user_params
    params.require(:bus).permit(
      :name,
      :type_of_bus
      )
  end
end
