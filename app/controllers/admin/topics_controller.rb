class Admin::TopicsController < ApplicationController


  before_action :authenticate_admin!


  def new
    @topic = Topic.new
  end


  def index
    @topics = Topic.all.order(created_at: :desc)
    @topic = Topic.new
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
    @topic.admin_id = current_admin.id
    @topics = Topic.all
    if @topic.save!
      flash[:notice] = "TOPICが保存されました。"
      redirect_to admin_topic_path(@topic)
    else
      flash[:alert] = "再度入力してください。"
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
      params.require(:topic).permit(:title, :body, :image, :admin_id)
    end


end