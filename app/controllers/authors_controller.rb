class AuthorsController < ApplicationController
  def new
    @page_title = 'Add New Author'
    @author = Author.new
  end

  def create
  #render plain: params[:post].inspect

  @author = Author.new(author_params)
  if(@author.save)
    redirect_to @author
  else
    render 'new'
  end

  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end


  def index
    @author = Author.all
  end


  def show
    @author = Author.find(params[:id])
  end

  private
  def author_params
  params.require(:author).permit(:first_name, :last_name)
  end
end
