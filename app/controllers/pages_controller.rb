class PagesController < ApplicationController
  def price_list
    @price4 = Value.find(4)
    @price5 = Value.find(5)
    @price6 = Value.find(6)
    @price7 = Value.find(7)
    @price8 = Value.find(8)
    @price9 = Value.find(9)
    @price10 = Value.find(10)
  end
end
