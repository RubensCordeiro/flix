# frozen_string_literal: true

module MoviesHelper
  def currency_to_millions(amount)
    (amount.to_f / 1E6).round(0)
  end

  def gross_amount(movie)
    movie.flop? ? "Flop!!" : "#{currency_to_millions(movie.gross_amount)} M"
  end

  def release_date(movie)
    movie.released_on.strftime("%d/%m/%Y")
  end
end
