class DestinationsController < ApplicationController
  before_action :set_list
  before_action :set_desitnation, only: [:show, :edit, :update, :destroy]
  def index
    @destinations = Destination.all 
  end

  def show
  end

  def new
    @destination = Destination.new
    render partial: "form"
  end

  def create
    @destination = @list.create_destination(destination_params)
    #@destination = @list.destination.new(destination_params)
    if @destination.save
      redirect_to list_destinations_path
    else
      render partial: "form"  
    end 
  end

  def edit
    render partial: "form"
  end

  def update
    if @destination.update(destination_params)
      redirect_to list_destination_path
    else 
      render :edit                                      
    end 
  end

  def destroy
    @destination.destroy
    redirect_to list_destination_path 
  end

  private 

    def set_list
      @list = List.find(params[:list_id])
    end 

    def set_desitnation
      @destination = Destination.find(params[:id])
    end 
    def destination_params
      params.require(:destination).permit(:title)
    end
end
