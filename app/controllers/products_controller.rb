class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      @product.category_ids = params[:product][:category_ids]
      flash[:success] = "Product updated."
      redirect_to @product
    else
      flash[:danger] = "Product not updated."
      render 'edit'
    end
  end

  def show
    if session[:id]!= nil
      @user = User.find(session[:id])
    else
      @user = nil
    end
    @product = Product.find(params[:id])
  end


  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :quantity, :picture)
    end


end
