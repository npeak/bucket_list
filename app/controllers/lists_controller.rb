class ListsController < ApplicationController

  def index
    @list = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
  end

  def edit
  end

  def update
    @list.update(list_params)
  end
  
  def destroy
    @list.destroy
    # redirect_to sub_topics_path
  end

  private
  # def set_sub
  #   @sub = Sub.find(params[:sub_id])
  # end

  # def set_topic
  #   @topic = Topic.find(params[:id])
  # end

  def list_params
    params.require(:topic).permit(:name, :body)
  end
end


  # def new
  #   @topic = @sub.topics.new
  #   render partial: "form"
  # end

  # def edit
  #   render partial: "form"
  # end

  # def create
  #   @topic = @sub.topics.new(topic_params)

  #   if @topic.save
  #     redirect_to [@sub, @topic]
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   if @topic.update(topic_params)
  #     redirect_to [@sub, @topic]
  #   else
  #     render :edit
  #   end
  # end

#   def destroy
#     @topic.destroy
#     redirect_to sub_topics_path
#   end

#   private
#     def set_sub
#       @sub = Sub.find(params[:sub_id])
#     end

#     def set_topic
#       @topic = Topic.find(params[:id])
#     end

#     def topic_params
#       params.require(:topic).permit(:name, :body)
#     end
# end
