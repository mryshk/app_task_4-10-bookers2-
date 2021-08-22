class BookCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @book_comment = BookComment.new(book_comment_params)
    @book_comment.user_id = current_user.id
    @book_comment.book_id = @book.id
    respond_to do |format|
    if @book_comment.save
      format.html { redirect_back(fallback_location: root_path) }
      format.js
    else
      @book_s = Book.new
      @user = User.find(@book.user_id)
      render :"books/show"
    end
    end
  end

  def destroy
    respond_to do |format|
    BookComment.find_by(book_id: params[:book_id],id: params[:id]).destroy
    format.html { redirect_back(fallback_location: root_path) }
    format.js
    end
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end

