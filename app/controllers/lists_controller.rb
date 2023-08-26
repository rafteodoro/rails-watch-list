class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.img_path = 'placeholder.jpg'
    if @list.save
      redirect_to root_path, notice: 'List was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    @review = Review.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
