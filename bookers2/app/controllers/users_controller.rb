class UsersController < ApplicationController
  def show
    @user = User.find(parmas[:id])
    @book = Book.new
    @books = @user.books.all
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name,:profile_image,:introduction)
  end
end
