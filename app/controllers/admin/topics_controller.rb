class Admin::TopicsController < ApplicationController


  before_action :authenticate_admin!


  def new
  end


  def index
    @topic = Topic.new
    @topics = Topic.all.order(created_at: :desc)
  end


  def show
    @topic = Topic.find(params[:id])
  end


  def edit
    @topic = Topic.find(params[:id])
  end


  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      flash[:notice] = "TOPICが変更されました。"
      redirect_to admin_topic_path(@topic.id)
    else
      render "edit"
    end
  end


  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash[:notice] = "TOPICが保存されました。"
      redirect_to admin_topic_path(@topic)
    else
      flash[:alert] = "再度入力してください。"
      @topics = Topic.all
      render 'index'
    end
  end


  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to admin_topics_path
  end





  private

    def topic_params
      params.require(:topic).permit(:title, :body, :image)
    end


end