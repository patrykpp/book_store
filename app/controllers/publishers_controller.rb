class PublishersController < ApplicationController
  def new
    @page_title = 'Add New Author'
    @publisher = Publisher.new
  end

  def create
  #render plain: params[:post].inspect
  if(@publisher.save)
    @publisher = Publisher.new(publisher_params)
    redirect_to @publisher
  else
    render 'new'
  end
end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
  def publisher_params
  params.require(:publisher).permit(:name)
  end
end
