class SearchController < ApplicationController
  def index
    @results = Product.search do
      fulltext params[:search]
      with(:state, Product::STATE_ACTIVE)
    end.results
  end
end