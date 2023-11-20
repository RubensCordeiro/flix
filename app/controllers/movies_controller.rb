# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = ["Iron-Man", "Spider-man", "Hulk"]
  end
end
