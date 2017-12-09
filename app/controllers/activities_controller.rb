class ActivitiesController < ApplicationController
  def index
    @activities = Activities.all
  end

  def show
  end

  def new
    @activites = Activites.new
  end

  def create
    @activites = activities.new(activites_params)
    @activites.save

  def edit
  end

  def update
    if @activites.update(activities_params)
      redirect_to activites_path
    else 
      render :edit 
    end 
  end

  def destroy
    @activities.destroy
  end

  private

  def activites_params
    params.require(:activty).permit(:name, :description)
  end 
end
