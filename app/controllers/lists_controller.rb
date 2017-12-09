class ListsController < ApplicationController
  before_action :set_list, only: [:destroy, :show, :update, :edit]

  def index
    @lists = List.all
  end

  def show

  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else 
      render :new
    end 
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path
    else 
      render :edit 
    end 
  end
  
  def destroy
    @list = List.find(params[:id]).destroy
    redirect_to lists_path 
    # redirect_to sub_topics_path
  end

  private

  def list_params
      params.require(:list).permit(:title)
  end 


  def set_list
    @list = List.find(params[:id])
  end 

  def list_params
    params.require(:list).permit(:title)
  end
end
