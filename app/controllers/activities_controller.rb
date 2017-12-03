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
    @activites.update(activities_params)
  end

  def destroy
    @activities.destroy
  end
end
