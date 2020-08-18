class Admin::InquiriesController < ApplicationController


  before_action :authenticate_customer!


  def update
   inquirie = Inquirie.find(params[:id])
   inquirie.update(inquirie_params)
   customer = inquirie.customer
   ContactMailer.send_when_admin_reply(customer, inquirie).deliver
  end


end
