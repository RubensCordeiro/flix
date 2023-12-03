# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to(@movie)
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
    redirect_to(root_path)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to(root_path)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :gross_amount, :released_on)
  end
end
