class SearchController < ApplicationController
  def index
    latitude = params[:latitude]
    longitude = params[:longitude]

    @search = Product.search do
      fulltext params[:search]
      with(:searchable, true)
      facet(:price)
      with(:price, params[:price]) if params[:price].present?
      with(:location).in_radius(latitude, longitude, 20, bbox: true) if latitude && longitude
    end

    @results = @search.results
  end
end