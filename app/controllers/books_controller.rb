class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params{:id})
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params{:id})
  end

  def create
     @book = Book.new(@books_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book)
    else
      @books = Book.all
      render :index
  end
end

  def destroy
  end


end

 private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
