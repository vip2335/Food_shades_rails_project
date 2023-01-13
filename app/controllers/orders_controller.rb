class OrdersController < ApplicationController

  def index

      @orders = Order.all
      
  end

  def show
    
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @user = User.find(params[:user_id])
    @order = @user.orders.create(order_params)
    redirect_to user_path(@user)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to root_path, status: :see_other
  end

  private
  
  def order_params
    params.require(:user).permit(:name, :res_name)
  end
end

