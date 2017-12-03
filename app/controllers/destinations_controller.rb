class DestinationsController < ApplicationController
  def index
    @destinations = Destinations.all
  end

  def show
  end

  def new
    @destinations = Destinations.new
  end

  def create
    @destinations = Destinations.new(destinations_params)
    @destinations.save
  end

  def edit
  end

  def update
    @destinations.update(destinations_params)
  end

  def destroy
    @destinations.destroy
  end

  def destinations_params
    params.require(:id).permit(:body)
  end
end
