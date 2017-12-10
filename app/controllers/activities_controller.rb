class ActivitiesController < ApplicationController

  before_action :set_list
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = @list.activities.new
  end

  def create
  
    @activity = @list.activities.new(activity_params)

    if @activity.save
      redirect_to [@list, @activity]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to [@list, @activity]
    else
      render :edit
    end
  end


  def destroy
    @activity.destroy
    redirect_to list_activities_path 
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description)
  end 

  def set_activity
    @activity = Activity.find(params[:id])
  end 

  def set_list
    binding.pry
    @list = List.find(params[:list_id])
  end

end
