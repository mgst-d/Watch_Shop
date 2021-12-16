class MainController < ApplicationController
  def index
    @brands = Brand.all.limit(3)
    @products = Product.all.limit(8)
  end
end
