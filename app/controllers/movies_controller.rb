class MoviesController < ApplicationController

  def index
    if params[:query].present?
      @movies = Movie.where("title LIKE ?", "%#{params[:query]}%")
    else
      @movies = Movie.all
    end
  end
end
