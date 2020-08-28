class Customer::CustomersController < ApplicationController


  def show
  	@customer = Customer.find(current_customer.id)
  end


  def edit
  	@customer = Customer.find(current_customer.id)
  end


  def update
  	@customer = Customer.find(current_customer.id)
    if @customer.update(customer_params)
      redirect_to customer_path
    else
      render :edit
    end
  end




  private

    def customer_params
      params.require(:customer).permit(:name, :email, :password)
    end



end
