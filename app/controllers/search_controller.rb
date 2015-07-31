class SearchController < ApplicationController
  def index
    @results = Product.search do
      fulltext params[:search]
      with(:searchable, true)
    end.results
  end
end