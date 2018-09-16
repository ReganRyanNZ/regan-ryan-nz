require "CSV"

class PagesController < ApplicationController

  def index
  end

  def taboo
    @cards = CSV.new(Taboo.data).map { |matrix| matrix.map(&:strip) }
  end

end