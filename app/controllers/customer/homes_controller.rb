class Customer::HomesController < ApplicationController


  def top
  	@topic = Topic.find_by(title: "新型コロナウイルス等の感染予防対策について")
    @topics = Topic.all.order(created_at: :desc)
  end


end
