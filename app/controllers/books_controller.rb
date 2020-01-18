class BooksController < ApplicationController
  def new
    @page_title = 'Add Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new


  end

  def create
    @author = Author.new(author_params)
    if(@author.save)
      redirect_to @author
    else
      render 'new'
    end
  end

  def update
    @author = Author.find(params[:id])

    if(@author.update(author_params))
      redirect_to @author
    else
      render 'edit'
    end
  end


  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path

  end

  def edit
    @author = Author.find(params[:id])
  end

  def index
    @author = Author.all
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def book_params
  params.require(:book).permit(:title, :category, :author_id, :publisher_id, :isbn, :price, :format, :excerpt, :pages, :year)
  end

end
