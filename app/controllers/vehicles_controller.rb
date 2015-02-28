class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all

    render json: @vehicles
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      render json: @vehicle, status: :created, location: @vehicle
    else
      render json: @vehicle.errors, status: :unprocessable_entitiy
    end
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :make, :model, :year, :engine_type)
  end
end
