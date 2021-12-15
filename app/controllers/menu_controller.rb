class MenuController < ApplicationController
  before_action :set_cats
    
  def index
      @products = Product.all
  end
  
  private 
  def set_cats
    @cats = Category.all.where(display: true)
  end
  
end