class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path(@product.uuid)
    else
      render :new
    end
  end

  def show
    @product = Product.find_by(uuid: params[:id])
  end

  def edit
    @product = Product.find_by(uuid: params[:id])
  end

  def update
    @product = Product.find_by(uuid: params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find_by(uuid: params[:id])
    @product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :price, :stock_quantity)
  end 
end
