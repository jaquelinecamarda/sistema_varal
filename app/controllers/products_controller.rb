class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

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

  def update
    if @product.update(product_params)
      flash[:success] = 'Product uptaded successfully'
      redirect_to products_path # se der certo o usuário e redirecionado p/ listagem de products
    else
      flash[:error] = @product.errors.full_messages.first
      render :edit
    end
  end

  def destroy
    product.destroy
    redirect_to products_path
  end

  def edit
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

  def set_product
    @product = Product.find(params[:id])
  end
end
