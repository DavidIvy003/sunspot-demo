class SearchController < ApplicationController
  def index
    @results = Product.search do
      fulltext params[:search]
    end.results
  end
end