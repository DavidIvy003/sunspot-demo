class ProductsController < ApplicationController
  def index
    @products = Product.active
  end

  def show
    @product = Product.find(params[:id])
    @product.views += 1
    @product.save
  end
end