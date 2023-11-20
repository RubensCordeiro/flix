# frozen_string_literal: true

class Movie < ApplicationRecord
  def flop?
    gross_amount <= 250E6
  end
end
