class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'Product created successfully'
      redirect_to products_path # se der certo o usuário e redirecionado p/ listagem de products
    else
      flash[:error] = @product.errors.full_messages.first
      redirect_to products_new_path # se der errado ele permanece na propria página
    end
  end

  def index
    @products = Product.all
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
