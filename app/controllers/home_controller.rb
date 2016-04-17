class HomeController < ApplicationController

  def index
    @images = Image.all
    @comments = Comment.all
    @image = Image.new
    @comment = Comment.new
  end
  def edit
  end
end
