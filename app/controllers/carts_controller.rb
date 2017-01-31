class CartsController < ApplicationController

  def show
    @user = User.find(session[:id])
    @cart = @user.carts.last
  end

  def create
  	@user = User.find(session[:id])
  	@old_cart = @user.carts.last
    UserMailer.receipt_email(@user, @old_cart).deliver_later
    cart_checkout(@old_cart)
  	@new_cart = Cart.create(total: 0.00)
  	@user.carts << @new_cart
    render :"checkout"
  end

  def edit
    @user = User.find(session[:id])
    debugger
    @product = Product.find(params[:product_id])
    @cart = @user.carts.last
  end

  def index
    @user = User.find(session[:id])
    @all_carts = @user.carts
    @old_carts = @user.carts[0..-2]
  end

end
