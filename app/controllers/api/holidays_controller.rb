class Api::HolidaysController < ApplicationController
  def index
    require "http"
    reponse = HTTP.get"https://holidayapi.com/v1/holidays?pretty&key=c63a52af-95be-443d-9378-a34aafd3b389&country=US&year=2020"
    render json: response.parse
  end
end
