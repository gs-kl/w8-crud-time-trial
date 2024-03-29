class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    # flash[:notice] = "Product created successfully."
    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    flash[:notice] = "Product updated successfully."
    redirect_to products_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product deleted successfully."
    redirect_to products_path
  end


  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
