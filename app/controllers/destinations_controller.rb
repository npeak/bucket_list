class DestinationsController < ApplicationController
  before_action :set_list only: [:index, :create]
  before_action :set_destination only: [:show, :update, :destroy]
  def index
    @render json: @list.destination
  end

  def show
    render json: @destination
  end

  def new
    @destinations = Destinations.new
  end

  def create
    @destination = @list.destination.new(destination_params)
    if @destination.save
      render json: @destination
    else
      render_error(@destination)
    end 
  end

  def edit
  end

  def update
    if @destination.update(destination_params)
      render json: @destination
    else 
      render_error(@destination)
    end 
  end

  def destroy
    @destinations.destroy
    render json: {message: 'removed', status: :ok}
  end

  private 

    def set_list
      @list = List.find(params[:list_id])
    end 
    
    def set_destination
      @destination = Destinations.find(params[:id])
    end 
    def destinations_params
      params.require(:destination).permit(:body)
    end
end
