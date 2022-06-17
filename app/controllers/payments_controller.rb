class PaymentsController < ApplicationController

  get "/payments" do
    payment = Payment.all
    payment.to_json
  end

  post "/payments" do
    payment = Payment.new(params[:payment])
    if payment.save
      payment.to_json
    else
      {errors: payment.errors.full_messages}.to_json
    end
  end
end