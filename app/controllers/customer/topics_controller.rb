class Customer::TopicsController < ApplicationController


  def index
  	@topic = Topic.new
    @topics = Topic.all.order(created_at: :desc).page(params[:page])
  end


  def show
  	@topics = Topic.find(params[:id])
  	@comment = Comment.new
  	@comments = @topics.comments
    @topic_new = Topic.new
  end


end
