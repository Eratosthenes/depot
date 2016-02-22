class StoreController < ApplicationController

  def index
    @products = Product.order(:title)
    session[:counter] ||= 0
    @counter = session[:counter] += 1  
  end
end
