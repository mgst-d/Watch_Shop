class MainController < ApplicationController

  before_action :set_page_options
  def index
    @brands = Brand.all.limit(3)
    @products = Product.all.limit(8)
  end
  def set_page_options
    @page_title = "Watches Shop"
    @page_description = 'Watches'
    @page_keywords = 'Man Woman Kids'
  end
end
