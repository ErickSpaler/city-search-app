class CitiesController < ApplicationController
  def index
    @states = State.all
    @cities = City.all.includes(:state)
  end
end
