class Admin::ReservationsController < ApplicationController


  before_action :authenticate_admin!


  def index
  end


end
