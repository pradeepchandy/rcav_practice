class CalculationsController < ApplicationController
  def home
  end

   def square
   @the_number = params[:number].to_f
   @answer = @the_number **2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
@the_interest_rate = params[:interest_rate].to_f/100/12
@the_number_of_payments = params[:number_of_payments].to_f
@the_present_value = params[:present_value].to_f

@payment = @the_present_value* @the_interest_rate * (((1+@the_interest_rate)**@the_number_of_payments )/((1+@the_interest_rate)**@the_number_of_payments -1))


  end
end
