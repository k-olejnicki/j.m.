class HomeController < ApplicationController
  before_action :authenticate_admin!, except: [:index]

  def index
    @images = Image.all
    @comments = Comment.all
    @values = Value.all
    @educations = Education.all
    @image = Image.new
    @comment = Comment.new
    @value = Value.new
    @education = Education.new
    @price1 = Value.find(1)
    @price2 = Value.find(2)
    @price3 = Value.find(3)
  end
  def show
  end

  def edit
  end
end
