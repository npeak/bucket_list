class DestinationsController < ApplicationController
  before_action :set_list
  before_action :set_desitnation, only: [:show, :edit, :update, :destroy]
  def index
    @destinations = Destination.all 
  end

  def show
  end

  def new
    @destinations = @list.destinations.new
  end

  def create
    @destination = @list.destinations.new(destination_params)
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
      @list = List.find(params[:p])
    end 

    def set_destination
      @destination = Destination.find(params[:id])
    end 
    def destinations_params
      params.require(:destination).permit(:ttile)
    end
end
