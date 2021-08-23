class BookCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @book_comment = BookComment.new(book_comment_params)
    @book_comment.user_id = current_user.id
    @book_comment.book_id = @book.id
    if @book_comment.save
     @book_comment = BookComment.new
    else
      @book_s = Book.new
      @user = User.find(@book.user_id)
      render :"books/show"
    end
  end

  def destroy
    @book = Book.find(params[:book_id])
    BookComment.find_by(book_id: params[:book_id],id: params[:id]).destroy
    @book_comment = BookComment.new
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end

