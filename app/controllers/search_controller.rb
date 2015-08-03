class SearchController < ApplicationController
  def index
    @search = Product.search do
      fulltext params[:search]
      with(:searchable, true)
      facet(:price)
      with(:price, params[:price]) if params[:price].present?
    end

    @results = @search.results
  end
end