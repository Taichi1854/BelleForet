class Admin::ReservationsController < ApplicationController


  before_action :authenticate_admin!


  def index
    @reservation = Reservation.new
  end

   private

    def reservation_params
      params.require(:reservation).permit(:customer_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :tel, :email, :people, :date, :time, :body)
    end


end
