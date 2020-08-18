class Customer::InquiriesController < ApplicationController


  before_action :authenticate_customer!


  def new
  end


  def create
  end


  def confirm
  end




  private

    def inquirie_params
      params.require(:inquirie).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :tel, :email, :body)
    end


end
