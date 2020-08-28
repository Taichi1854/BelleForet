class Customer::HomesController < ApplicationController


  def top
    @topics = Topic.all.order(created_at: :desc)
  end


end
