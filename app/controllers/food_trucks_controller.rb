require 'httparty'
require 'json'
require 'open-uri'
class FoodTrucksController < ApplicationController
  def index

  end

  def render_foodtrucks
    response = Net::HTTP.get_response(URI.parse("http://data.sfgov.org/resource/rqzj-sfat.json"))
    data = response.body
    render :json => JSON.parse(data)
  end
end
