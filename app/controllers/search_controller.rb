class SearchController < ApplicationController
  def index
    @results = Product.active
  end
end