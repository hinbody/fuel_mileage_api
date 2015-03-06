class EntriesController < ApplicationController

  def index
    @entries = Entry.all

    render json: @entries
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      render json: @entry, status: :created, location: @entry
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:gallons, :price_per_gallon, :current_mileage, :vehicle_name, :created_at)
  end
end
