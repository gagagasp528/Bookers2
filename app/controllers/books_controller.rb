class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    @books = Book.all
    @user = @book.user
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
     @book = Book.new(@books_params)
     @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book)
    else
      @books = Book.all
      render :index
    end
  end

def update
  @book = Book.find(params[:id])
   if flash[:notice] = "You have updated user successfully."
    @book.update(user_params)
    redirect_to book_path(user_id)
   else
   render :edit
   end
end

  def destroy
     book = Book.find(params[:id])
    if book.destroy
     flash[:notice] = "Book was successfully destroy."
     redirect_to books_path
    end
  end

end

 private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
