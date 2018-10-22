class PagesController < ApplicationController

  def index
  end

  def taboo_print
    @cards = get_taboo_csv
  end

  def taboo
    @cards = get_taboo_csv.to_a
  end

  private

  def get_taboo_csv
    CSV.new(Taboo.data).map { |matrix| matrix.map(&:strip) }
  end
end