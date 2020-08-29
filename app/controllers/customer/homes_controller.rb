class Customer::HomesController < ApplicationController


  def top
  	@topic = Topic.find(21)
    @topics = Topic.all.order(created_at: :desc)
  end


end
