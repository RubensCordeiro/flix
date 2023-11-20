# frozen_string_literal: true

module MoviesHelper
  def gross_amount(movie)
    movie.flop? ? "Flop!!" : number_to_currency(movie.gross_amount, precision: 0)
  end

  def release_date(movie)
    movie.released_on.strftime("%d/%m/%Y")
  end
end
