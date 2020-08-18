class Customer::TopicsController < ApplicationController


  def index
  	@topic = Topic.new
    @topics = Topic.all
  	@topics = Topic.page(params[:page]).reverse_order
  end


  def show
  	@topic = Topic.find(params[:id])
  end


end
