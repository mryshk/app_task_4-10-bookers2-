class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def index
    @books = Book.all
    @user = User.find(params[:user_id])
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    @book.update(book_params)
    redirect_to book_path(@book)

  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end


  private

  def book_params
    params.require(:book).permit(:title,:body)
  end


end

