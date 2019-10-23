class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to home_path
    else
      puts 'Deu ruim'
    end
  end

  def product_params
    params.require(:product)
          .permit(
            :description,
            :color,
            :quantity,
            :unit_cost,
            :product_cost,
            :price
          )
  end
end
