class BooksController < ApplicationController

impressionist :actions=> [:show,:index]

  def show
    @book_s = Book.new
    @book = Book.find(params[:id])
    impressionist(@book, nil, unique: [:ip_address])
    @user = User.find(current_user.id)
    @book_comment = BookComment.new
  end

  def index
    @book = Book.new
    @books = Book.includes(:favorited_users).sort{|a,b| b.favorited_users.includes(:favorites).created_this_week.size <=> a.favorited_users.includes(:favorites).created_this_week.size }
    @books_regular = Book.all
    @rank_books = Book.order(impressions_count: "DESC")
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
    params.require(:book).permit(:title,:body,:rate,:category)
  end


end

