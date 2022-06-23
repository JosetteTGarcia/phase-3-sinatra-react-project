class CategoriesController < ApplicationController

  get "/categories" do
    category = Category.all
    category.to_json
  end

  get "/categories/:id" do 
    payment = Category.find(params[:id])
    payment.to_json
  end

  post "/categories" do
    category = Category.new(params)
    if category.save
      category.to_json
    else
      {errors: category.errors.full_messages}.to_json
    end
  end


  delete "/categories/:id" do
    category = Category.find_by_id(params[:id])
    if category
      category.destroy
      category.to_json
    else
      {errors: ["Category not found"], status: "Not Found"}.to_json
   end

  end
end