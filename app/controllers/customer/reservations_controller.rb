class Customer::ReservationsController < ApplicationController


  before_action :authenticate_customer!


  def new
    @reservation = Reservation.new
  end


  def index
  end


  def confirm
    @reservation = Reservation.new
  end


  def create
    @reservation = current_customer.reservations.create(reservation_params)
    if @reservation.save
      redirect_to reservations_complete_path
      flash[:notice] = "予約が完了しました。"
    else
      flash[:alert] = "再度入力してください"
      render :new
    end
  end


  def complete
  end




  private

    def reservation_params
      params.require(:reservation).permit(:customer_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :tel, :email, :people, :date, :time, :body)
    end


end
