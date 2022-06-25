


class PaymentsController < ApplicationController

  get "/payments" do
    @payment = Payment.all
    @payment.to_json(include: [:store, :category])
  end

  get "/payments/:id" do 
    payment = Payment.find(params[:id])
    payment.to_json
  end
  

  post "/payments" do
    payment = Payment.new(params)
    if payment.save
      payment.to_json(include: [:store, :category])
    else
      {errors: payment.errors.full_messages}.to_json
    end
  end
 

  patch "/payments/:id" do
    payment = Payment.find_by_id(params[:id])
    payment.update(params)
    payment.to_json(include: [:store, :category])
  end

  delete "/payments/:id" do
    payment = Payment.find_by_id(params[:id])
    if payment
      payment.destroy
      payment.to_json

    else
      {errors: ["Payment not found"], status: "Not Found"}.to_json
   end
  end
  
end