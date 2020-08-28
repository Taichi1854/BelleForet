class Customer::FavoritesController < ApplicationController


  def create
  	topic = Topic.find(params[:topic_id])
    favorite = current_customer.favorites.new(topic_id: topic.id)
    favorite.save
    redirect_to topic_path(topic)
  end


  def destroy
  	topic = Topic.find(params[:topic_id])
    favorite = current_customer.favorites.find_by(topic_id: topic.id)
    favorite.destroy
    redirect_to topic_path(topic)
  end


end
