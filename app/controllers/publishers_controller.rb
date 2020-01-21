class PublishersController < ApplicationController
  def new
    @page_title = 'Add New Author'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
  if(@publisher.save)
    flash[:notice] = "Publisher Created"
    redirect_to @publisher
  else
    render 'new'
  end
end

  def update
    @publisher = Publisher.find(params[:id])

    if(@publisher.update(publisher_params))
      redirect_to @publisher
    else
      render 'edit'
    end
  end

  def edit
    @publisher = Publisher.find(params[:id])

  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    redirect_to publishers_path
  end

  def index
    @publusher = Publisher.all
  end

  def show
    @publisher = Publishers.find(params[:id])
  end

  private
  def publisher_params
  params.require(:publisher).permit(:name)
  end
end
