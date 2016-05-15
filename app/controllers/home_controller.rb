class HomeController < ApplicationController
  #before_action :authenticate_admin!, except: [:index]
  def index
    @images = Image.all
    @comments = Comment.all
    @image = Image.new
    @comment = Comment.new
  end
  def edit
  end
end
