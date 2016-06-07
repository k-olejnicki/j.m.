class HomeController < ApplicationController
  before_action :authenticate_admin!, except: [:index]

  def index
    @images = Image.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 50)
    @comments = Comment.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    @values = Value.all
    @educations = Education.all.order("created_at DESC")
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
