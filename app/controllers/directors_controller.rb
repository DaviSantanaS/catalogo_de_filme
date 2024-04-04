class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  def index
    @directors = Director.all
  end

  def show
    @movies = @director.movies
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.create(director_params)
    if @director.save
      redirect_to @director, notice: 'Director was successfully created.'
    else
      render :new
    end
  end

  def update
    if @director.update(director_params)
      redirect_to @director, notice: 'Director was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_url, notice: 'Director was successfully destroyed.'
  end

  private
  def set_director
    @director = Director.find(params[:id])
  end

  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :favorite_genre)
  end

end
