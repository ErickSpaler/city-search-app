# This controller handles actions related to cities.
class CitiesController < ApplicationController
  def index
    @cities = params[:query].present? ? City.search_by_name(params[:query]) : City.all
  end
end
