class ListsController < ApplicationController
  def index
    if params[:search].present?
      @lists = List.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @lists = List.all
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(set_params)

    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    @movie_ratings = @list.movies.order(rating: :desc).first(3)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path, status: :see_other
  end

  private

  def set_params
    params.require(:list).permit(:name, :photo)
  end
end
