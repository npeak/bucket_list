class DestinationsController < ApplicationController
  before_action :set_list only: [:index, :create]
  before_action :set_destination only: [:show, :update, :destroy]
  def index
    @desitinations = desitinations.all 
  end

  def show
  end

  def new
    @destinations = Destinations.new
  end

  def create
    @destination = @list.destination.new(destination_params)
    if @destination.save
      redirect_to destinations_path
    else
      render :new 
    end 
  end

  def edit
  end

  def update
    if @destination.update(destination_params)
      redirect_to destinations_path
    else 
      redirect_to :edit                                               stination)
    end 
  end

  def destroy
    @destinations.destroy
  end

  private 

    def set_list
      @list = List.find(params[:list_id])
    end 

    def set_destination
      @destination = Destinations.find(params[:id])
    end 
    def destinations_params
      params.require(:destination).permit(:ttile)
    end
end
