class UsersController < ApplicationController
  before_action :authenticate
  def index

    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
    # @restaurants = Restaurant.all
    # @user = User.new(user_params)
    session[:user_id] = user.id

    sessions[:user_id] = @user.id      
      redirect_to '/restaurants'   
    else      
      redirect_to '/login'  
    end
  
    # if @user.save
    #   redirect_to restaurants_url(@restaurants)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :user_email, :user_phone, :user_address, :password)
  end

 

end
