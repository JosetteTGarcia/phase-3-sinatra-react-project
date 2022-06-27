class StoresController < ApplicationController

  get "/stores" do
    store = Store.all
    store.to_json
  end

  post "/stores" do
    store = Store.new(params)
    if store.save
      store.to_json
    else
      {errors: store.errors.full_messages}.to_json
    end
  end

  delete "/stores/:id" do
    store = Store.find_by_id(params[:id])
    if store
      store.destroy
      store.to_json
    else
      {errors: ["Store not found"], status: "Not Found"}.to_json
   end
  end

end