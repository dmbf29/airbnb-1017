require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  def index
  end

  def show
    # @flat = Flat.find(params[:id]) (tomorrow)
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    json = URI.open(url).read
    @flats = JSON.parse(json)
    # @flats = Flat.all (tomorrow)
  end
end
