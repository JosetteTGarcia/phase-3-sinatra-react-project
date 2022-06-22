class CategoriesController < ApplicationController

  get "/categories" do
    category = Category.all
    category.to_json
  end

  post "/categories" do
    category = Category.new(params)
    if category.save
      category.to_json
    else
      {errors: category.errors.full_messages}.to_json
    end
  end
end