class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
   if @user.save
    redirect_to @user, success:  "登録に成功しました。"
    else
    flash.now[:danger] = 'ユーザの登録に失敗しました。'
    render :new
   end
  end
  
  
  def update
  end

  def edit
  end
  
end


 private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
