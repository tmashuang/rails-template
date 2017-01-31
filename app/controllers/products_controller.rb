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

  def create
    @product = Product.new(product_params)

    if @product.save
      @product.category_ids = params[:product][:category_ids]
      flash[:success] = "Product created."
      redirect_to @product
    else
      flash[:danger] = "Product not created."
      render 'new'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:success] = "Product deleted."
    redirect_to products_path
  end


  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :quantity, :picture)
    end


end
