class BooksController < ApplicationController
  def new
    @page_title = 'Add Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new


  end

  def create
    @book = Book.new(book_params)
    if(@book.save)
      flash[:notice] = "Book Created"
      redirect_to @book
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])

    if(@book.update(book_params))
      redirect_to @book
    else
      render 'edit'
    end
  end


  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path

  end

  def edit
    @book = Book.find(params[:id])
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def book_params
  params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :year, :price, :buy, :excerpt, :format, :pages)
  end
end
