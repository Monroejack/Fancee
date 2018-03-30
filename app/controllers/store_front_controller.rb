class StoreFrontController < ApplicationController

  before_action :authenticate_user!

  def landing_page
  end
  
  def all_items
    @products = Product.all
  end

  def items_by_category
    @category = Category.find(params[:id])
    @products = @category.products
  end

  def items_by_brand
    @brand = params[:brand_name]
    @products = Product.where(brand: @brand)
  end
end
