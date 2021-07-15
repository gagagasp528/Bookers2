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
  end

  def destroy
  end


end

 private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
