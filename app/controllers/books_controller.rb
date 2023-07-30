class BooksController < ApplicationController
  def new
    @books = Book.new
  end

 def create
   @book = Book.new(book_params)
   if @book.save
     redirect to '/new'
    else
      render :index
    end
 end

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def book_params
  params.require(:book).permit(:body, :title)
  end

end
