class Customer::ReservationsController < ApplicationController


  before_action :authenticate_customer!


  def new
  end


  def create
  end


  def confirm
  end




  private

    def reservation_params
      params.require(:reservation).permit(:customer_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :tel, :email, :people, :date, :time, :body)
    end


end
