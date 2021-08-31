class BooksController < ApplicationController

  def show
    @book_s = Book.new
    @book = Book.find(params[:id])
    @user = User.find(current_user.id)
    @book_comment = BookComment.new
  end

  def index
    @book = Book.new
    to  = Time.current.at_end_of_day
    from  = (to - 6.day).at_beginning_of_day
    @books = Book.includes(:favorited_users).sort{|a,b| b.favorited_users.includes(:favorites).where(created_at: from...to).size <=> a.favorited_users.includes(:favorites).where(created_at: from...to).size }
    @user = User.find(current_user.id)
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to book_path(@book)
    flash[:notice]= "You have created book successfully"
    else
    @books = Book.all
    @user = User.find(current_user.id)
    render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
    if @book.user_id == current_user.id
      render "edit"
    else
      redirect_to books_path
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    if @book.update(book_params)
      redirect_to book_path(@book)
      flash[:notice]= "You have updated book successfully"
    else
      render :edit
    end
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to user_path(book.user)
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end


end

