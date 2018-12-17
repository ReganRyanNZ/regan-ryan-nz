class BlogController < ApplicationController

  def show
    render params[:id]
  end

end